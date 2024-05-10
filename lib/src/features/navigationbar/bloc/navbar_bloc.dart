import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(const NavbarInitial()) {
    on<NavigationTapEvent>((event, emit) {
      emit(const NavbarInitial());
   
      emit(NavbarchangeState(index: event.selectedIndex));
    });
  }
}
