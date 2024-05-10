part of 'book_bloc.dart';

sealed class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

final class BookInitial extends BookState {}

final class GetLocalProgress extends BookState {
  final BookProgress? bookprogress;
  final ChapterList chapterList;

  const GetLocalProgress(
      {required this.bookprogress, required this.chapterList});
}

final class ErrorSaving extends BookState {
  final String msg;

  const ErrorSaving({required this.msg});
}

final class SaveLocalProgressSucess extends BookState {
  final BookProgress? bookprogress;
  final ChapterList chapterList;

  const SaveLocalProgressSucess(
      {required this.bookprogress, required this.chapterList});
}

final class ErrorGetting extends BookState {
  final String msg;

  const ErrorGetting({required this.msg});
}

final class SavetapSuccess extends BookState {
  final int currentIndex;
  final ChapterList chapterList;
  final BookProgress? bookprogress;
  const SavetapSuccess(
      {required this.currentIndex,
      required this.chapterList,
      required this.bookprogress});
}

final class BookLoadingState extends BookState {}

///////////////////////////

