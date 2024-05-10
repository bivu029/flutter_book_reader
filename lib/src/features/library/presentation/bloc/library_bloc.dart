import 'dart:async';

import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/library/data/models/models.dart';
import 'package:bookbazar/src/features/library/data/sources/sources.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'library_event.dart';
part 'library_state.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc({required LibraryRemoteDataSource libraryRemoteDataSource})
      : _libraryRemoteDataSource = libraryRemoteDataSource,
        super(LibraryInitial()) {
    on<LibraryEvent>((event, emit) {});
    on<GetBookListHisEvent>(gethistory);
    // add(const GetBookListHisEvent());
    on<FromLibrayToBookdetailEvent>(
      (event, emit) {
        emit(FromLibrayToBookdetailSucesss(book: event.book));
        add(const GetBookListHisEvent());
      },
    );
  }
  final LibraryRemoteDataSource _libraryRemoteDataSource;
  final getuser = DependencyInjection.sl<Box<User>>();

  FutureOr<void> gethistory(
      GetBookListHisEvent event, Emitter<LibraryState> emit) async {
    try {
      emit(LibrayLoading());
      User? user = getuser.get('user');
      //sort data accorinding recent timestamp

      if (user!.bookProgress.isNotEmpty) {
        user.bookProgress
            .sort((a, b) => b.lastReadTimestamp.compareTo(a.lastReadTimestamp));
        print(user.bookProgress);
        final GetBookList getBookList = GetBookList(bookidList: []);
        for (var element in user.readHistory) {
          getBookList.bookidList.add(element.bookId);
        }
        final data = await _libraryRemoteDataSource.getbookbyid(
            getBookList, 'Bearer ${user.jwtToken!}', event.page, event.limit);

        emit(GetLibrayListSuccess(
            booklist: data, bookProgress: user.bookProgress));
      } else {
        emit(EmptyLibrary());
      }
    } catch (e) {
      print("libraybloc:$e");
      emit(LibraryError(msg: e.toString()));
    }
  }
}
