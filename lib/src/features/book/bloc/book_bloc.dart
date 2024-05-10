import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/utils/extensi.dart';
import 'package:bookbazar/src/features/book/data/local/local.datat.dart';
import 'package:bookbazar/src/features/book/data/remote/remote.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc(
      {required RemoteDataSource remoteDataSource,
      required LocaldataSource localdataSource})
      : _remoteDataSource = remoteDataSource,
        _localdataSource = localdataSource,
        super(BookInitial()) {
    on<BookEvent>((event, emit) {});
    on<SaveBookInitialProgresEvent>(saveInitialprogress);
    on<GetBookProgress>(getbook);
    on<SaveTapEvent>(savetap);
    on<PushToRemote>(pushRemote);
  }
  final RemoteDataSource _remoteDataSource;
  final LocaldataSource _localdataSource;
/////
  final getdatabase = DependencyInjection.sl<SharedPreferences>();
  final getuser = DependencyInjection.sl<Box<User>>();
//////////////////////////////////////////////////////////////////////
  FutureOr<void> saveInitialprogress(
      SaveBookInitialProgresEvent event, Emitter<BookState> emit) async {
    try {
      emit(BookLoadingState());
      final String bookid = event.chapterList.bookId;

      //get data from local if exist
      final BookProgress? data = await _localdataSource.getBookprogress(bookid);

      //if exist then check if length of completed chapterlist length less than data from remote source
      if (data != null) {
        if (event.bookprogress != null) {
          if (data.completChapterList.length <=
              event.bookprogress!.completChapterList.length) {
            await _localdataSource.saveBookprogress(bookid, event.bookprogress);
            emit(SaveLocalProgressSucess(
                bookprogress: event.bookprogress,
                chapterList: event.chapterList));
          } else {
            //if event.bookprogress is null
            emit(SaveLocalProgressSucess(
                bookprogress: data, chapterList: event.chapterList));
          }
        } else {
          //if not then just get data
          emit(SaveLocalProgressSucess(
              bookprogress: data, chapterList: event.chapterList));
        }
      } else {
        //if not then just save the data
        await _localdataSource.saveBookprogress(bookid, event.bookprogress);
        emit(SaveLocalProgressSucess(
            bookprogress: event.bookprogress, chapterList: event.chapterList));
      }
    } catch (e) {
      emit(ErrorSaving(msg: e.toString()));
    }
  }

/////////////////////////////////////////////////////////////////////
  FutureOr<void> getbook(GetBookProgress event, Emitter<BookState> emit) async {
    try {
      final data =
          await _localdataSource.getBookprogress(event.chapterList.bookId);
      emit(
          GetLocalProgress(bookprogress: data, chapterList: event.chapterList));
    } catch (e) {
      emit(ErrorGetting(msg: e.toString()));
    }
  }

/////////////////////////////////////////////////////////////////////////////////
  FutureOr<void> savetap(SaveTapEvent event, Emitter<BookState> emit) async {
    try {
      emit(BookLoadingState());
      //first get data from local database by using bookid
      //Note :in this data base we only save bookprogress not book
      BookProgress? data =
          await _localdataSource.getBookprogress(event.chapterList.bookId);
      //get user for updating its data

      //if data exist
      if (data != null) {
        data.lastReadTimestamp = DateTime.now();
        //check if currentChapterIndex already exist in bookprogress completChapterList
        // completChapterList=[0,1,2,3,6] lest say currentindex tap is 7 then we update this list so we can
        //show user that he/she already read this chapter
        if (!data.completChapterList.contains(event.currentChapterIndex)) {
          data.completChapterList.add(event.currentChapterIndex);
          data.currentChapter = event.currentChapterIndex;
          await _localdataSource.saveBookprogress(
              event.chapterList.bookId, data);
          //track last book read book id and save it database
          await _localdataSource.lastBookid(event.chapterList.bookId);

          //update user

          emit(SavetapSuccess(
              currentIndex: event.currentChapterIndex,
              chapterList: event.chapterList,
              bookprogress: data));
          add(PushToRemote(bookprogress: data));
        } else {
          // completChapterList=[0,1,2,3,6,7] lest say currentindex tap is 7 then we see that 7 already exist
          // we do not update list show user that he/she already read this chapter
          //only change currernt index
          data.currentChapter = event.currentChapterIndex;
          await _localdataSource.saveBookprogress(
              event.chapterList.bookId, data);
          //track last book read book id and save it database
          await _localdataSource.lastBookid(event.chapterList.bookId);

          emit(SavetapSuccess(
              currentIndex: event.currentChapterIndex,
              chapterList: event.chapterList,
              bookprogress: data));
          add(PushToRemote(bookprogress: data));
        }
      } else {
        //data is null that if this book is read for first time
        BookProgress bookProgress = BookProgress(
            bookId: event.chapterList.bookId,
            currentChapter: event.currentChapterIndex,
            completChapterList: [event.currentChapterIndex],
            totalChapters: event.chapterList.chapter.length,
            lastReadTimestamp: DateTime.now());
        await _localdataSource.saveBookprogress(
            event.chapterList.bookId, bookProgress);

        emit(SavetapSuccess(
            currentIndex: event.currentChapterIndex,
            chapterList: event.chapterList,
            bookprogress: bookProgress));
        await _localdataSource.lastBookid(event.chapterList.bookId);
        //track last book read book id and save it database
        add(PushToRemote(bookprogress: bookProgress));
      }
    } catch (e) {
      emit(ErrorSaving(msg: e.toString()));
    }
  }

  Future<User?> updateUser(BookProgress newbookProgress) async {
    try {
      final userBox = DependencyInjection.sl<Box<User>>();
      User? user = userBox.get('user');
      final existingBookProgress = user!.bookProgress.firstWhereOrNull(
        (bookProgress) => bookProgress.bookId == newbookProgress.bookId,
      );
      final existingReadHistroy = user.readHistory.firstWhereOrNull(
          (readhistry) => readhistry.bookId == newbookProgress.bookId);
      if (existingBookProgress != null) {
        // BookProgress with the same bookId exists in the list
        // Update the existing BookProgress object
        user.bookProgress[user.bookProgress.indexOf(existingBookProgress)] =
            newbookProgress;
        if (existingReadHistroy != null) {
          user.readHistory[user.readHistory.indexOf(existingReadHistroy)] =
              ReadHistory(
                  bookId: newbookProgress.bookId, readAt: DateTime.now());
        }
      } else {
        // BookProgress with the given bookId does not exist in the list
        // Add the new BookProgress object to the list
        user.bookProgress.add(newbookProgress);
        user.readHistory.add(ReadHistory(
            bookId: newbookProgress.bookId, readAt: DateTime.now()));
      }
      // Save the updated User object to the Hive box
      await userBox.put('user', user);

      return userBox.get('user');
    } catch (e) {
      throw Error();
    }
  }

  FutureOr<void> pushRemote(PushToRemote event, Emitter<BookState> emit) async {
    try {
      User? user = await updateUser(event.bookprogress);

      await _remoteDataSource.updateUser(
          user!.idToken!, user, 'Bearer ${user.jwtToken!}');
    } catch (e) {
      emit(ErrorSaving(msg: e.toString()));
    }
  }
}
