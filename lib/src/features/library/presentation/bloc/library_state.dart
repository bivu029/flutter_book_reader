part of 'library_bloc.dart';

abstract class LibraryState extends Equatable {
  const LibraryState();

  @override
  List<Object> get props => [];
}

class LibraryInitial extends LibraryState {}

final class LibrayLoading extends LibraryState {}

final class GetLibrayListSuccess extends LibraryState {
  final List<Book> booklist;
  final List<BookProgress> bookProgress;

  const GetLibrayListSuccess(
      {required this.booklist, required this.bookProgress});
}

final class LibraryError extends LibraryState {
  final String msg;

  const LibraryError({required this.msg});
}

final class EmptyLibrary extends LibraryState {}

final class FromLibrayToBookdetailSucesss extends LibraryState {
  final Book book;

 const FromLibrayToBookdetailSucesss({required this.book});
}
