part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();
  @override
  List<Object> get props => [];
}

final class GetBookListHisEvent extends LibraryEvent {
  final int page;
  final int limit;
  const GetBookListHisEvent({this.page = 1, this.limit = 10});
}

final class FromLibrayToBookdetailEvent extends LibraryEvent {
  final Book book;

 const FromLibrayToBookdetailEvent({required this.book});

}
