part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
  @override
  List<Object> get props => [];
}

class DashBoradTrendInitialEvent extends DashboardEvent {}

class DashBoradEditorInitialEvent extends DashboardEvent {}
// class GetTrendingBookEvent extends DashboardEvent{}

// class GetEditorchoiceBook extends DashboardEvent{

// }
// class Event extends DashboardEvent{}
class GetUserEvent extends DashboardEvent {}

//refreh trending
class RefreshEvent extends DashboardEvent {}

//refresh editor
class RefreshEditorEvent extends DashboardEvent {}

//continue reading event
class ContinueReadingEvent extends DashboardEvent {}

// Define the connectivity changed event
class ConnectivityChangedEvent extends DashboardEvent {
  final List<ConnectivityResult> result;

  const ConnectivityChangedEvent(this.result);
}

final class NavigatePageEvent extends DashboardEvent {
  final Book book;

 const NavigatePageEvent({required this.book});
}
final class  TodashBoardContinueEvent extends DashboardEvent{}