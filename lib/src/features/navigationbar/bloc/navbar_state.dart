part of 'navbar_bloc.dart';

sealed class NavbarState extends Equatable {
 
  const NavbarState();

  @override
  List<Object> get props => [];
}

final class NavbarInitial extends NavbarState {
  const NavbarInitial();
}

class NavbarchangeState extends NavbarState {
  final int index;
  const NavbarchangeState({required this.index});
}
