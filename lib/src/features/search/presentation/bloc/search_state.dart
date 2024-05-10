part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchStateSuccess extends SearchState {
  final List<Book>? bookenity;

  const SearchStateSuccess({required this.bookenity});
}

class SearchErrorState extends SearchState {
  final String msg;
  final String statscode;

 const SearchErrorState({required this.msg, required this.statscode});

}
class SearchLoading extends SearchState {
  
}