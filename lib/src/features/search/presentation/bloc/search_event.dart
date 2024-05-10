part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
  @override
  List<Object> get props => [];
}

class SearchTapEvent extends SearchEvent {
  final String? query;

 const SearchTapEvent({required this.query});
}
class SearchQueryChanged extends SearchEvent{
    final String? query;

 const SearchQueryChanged({required this.query});
}