
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:equatable/equatable.dart';
  
  part 'categori_event.dart';
  part 'categori_state.dart';
  
  class CategoriBloc extends Bloc<CategoriEvent, CategoriState> {
    CategoriBloc() : super(CategoriInitial()) {
      on<CategoriEvent>((event, emit) {
        // TODO: implement event handler
      });
    }
  }
