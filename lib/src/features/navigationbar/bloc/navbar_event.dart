part of 'navbar_bloc.dart';

sealed class NavbarEvent extends Equatable {
    final int selectedIndex;
  const NavbarEvent(this.selectedIndex);

  @override
  List<Object> get props => [];
}

class NavigationTapEvent extends NavbarEvent {
 const NavigationTapEvent(super.selectedIndex);
  
}
