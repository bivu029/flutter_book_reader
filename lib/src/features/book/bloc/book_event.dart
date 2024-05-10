part of 'book_bloc.dart';

sealed class BookEvent extends Equatable {
  const BookEvent();

  @override
  List<Object> get props => [];
}

class SaveBookInitialProgresEvent extends BookEvent {
  final BookProgress? bookprogress;
  final ChapterList chapterList;

  const SaveBookInitialProgresEvent(
      {required this.bookprogress, required this.chapterList});
}

final class GetBookProgress extends BookEvent {
  final ChapterList chapterList;
  const GetBookProgress({required this.chapterList});
}

final class SaveTapEvent extends BookEvent {
  final ChapterList chapterList;
  final int currentChapterIndex;
  const SaveTapEvent(
      {required this.chapterList, required this.currentChapterIndex});
}

final class NavigateContentPageEEvent extends BookEvent {}

final class PushToRemote extends BookEvent {
  final BookProgress bookprogress;

  const PushToRemote({required this.bookprogress});
}

final class BookLoadingEvent extends BookEvent {}


