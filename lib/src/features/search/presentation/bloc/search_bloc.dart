// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:bookbazar/src/core/error/failure.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/services/debounce.service.dart';
import 'package:bookbazar/src/core/utils/typedef.dart';
import 'package:bookbazar/src/features/search/data/sources/sources.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRemoteDataSource searchRemoteDataSource;
  late final Debounceable<Iterable<Book>?, String> _debouncedSearch;
  SearchBloc({
    required this.searchRemoteDataSource,
  }) : super(SearchInitial()) {
    _debouncedSearch =
        debounce<Iterable<Book>?, String>(searchRemoteDataSource.searchbook);
    on<SearchTapEvent>((event, emit) async {
  
      emit(SearchLoading());
      try {
        final data = await _debouncedSearch(event.query);
      
        emit(SearchStateSuccess(bookenity: data?.toList()));
      } on ServerFailure catch (e) {
     
        emit(SearchErrorState(msg: e.message!, statscode: e.statuscode));
      }
    });
  }
}
