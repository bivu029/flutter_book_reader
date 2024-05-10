// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardInitial extends DashboardState {}

class TrendbookState extends DashboardState {
  final List<Book?> booklist;

  const TrendbookState({required this.booklist});
}

class EditorbookState extends DashboardState {
  final List<Book?> booklist;

  const EditorbookState({required this.booklist});
}

class GetLocalBook extends DashboardState {}

class DashBoardErrorState extends DashboardState {
  final String erorr;

  const DashBoardErrorState({required this.erorr});
}

class UserNameState extends DashboardState {
  final String name;

  const UserNameState({required this.name});
}

class DashboardLoadingState extends DashboardState {}

class RefreshSuccess extends DashboardState {
  final List<Book?> booklist;

  const RefreshSuccess({required this.booklist});
}

class RefreshEditorchoiceSuccess extends DashboardState {
  final List<Book?> booklist;

  const RefreshEditorchoiceSuccess({required this.booklist});
}

class ContinueReadingEmpty extends DashboardState {}

class ContinuereadState extends DashboardState {
  final Book book;
  final BookProgress bookProgress;

  const ContinuereadState({
    required this.book,
    required this.bookProgress,
  });
}

class ErrorConnectionSate extends DashboardState {
  final String msg;

  const ErrorConnectionSate({required this.msg});
}

class NetworkAvalbleState extends DashboardState {
  final String msg;

  const NetworkAvalbleState({required this.msg});
}

class NavigateSucessfull extends DashboardState {
  final Book book;

 const NavigateSucessfull({required this.book});

}
