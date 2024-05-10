// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/utils/extensi.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookbazar/src/features/dashboard/data/sources/local/localsouce.data.dart';
import 'package:bookbazar/src/features/dashboard/data/sources/remote/sources.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashBoardLocalDataSource _dashBoardLocalDataSource;
  final DashboardRemoteDataSource _dashboardRemoteDataSource;
  // final authdatabox = DependencyInjection.sl<Box<User>>();
  late final User _user;

  late final StreamSubscription<List<ConnectivityResult>> subscription;
  final getdatabase = DependencyInjection.sl<SharedPreferences>();

  DashboardBloc({
    required DashBoardLocalDataSource dashBoardLocalDataSource,
    required DashboardRemoteDataSource dashboardRemoteDataSource,
  })  : _dashBoardLocalDataSource = dashBoardLocalDataSource,
        _dashboardRemoteDataSource = dashboardRemoteDataSource,
        super(DashboardInitial()) {
    on<DashboardEvent>((event, emit) {});
    on<GetUserEvent>(getuser);
    on<DashBoradTrendInitialEvent>(trendinitialmethod);
    on<DashBoradEditorInitialEvent>(editorinitialmethod);
    on<RefreshEvent>(refrshmethod);
    on<RefreshEditorEvent>(refrshEditorChoice);
    on<ContinueReadingEvent>(continueMethod);
    on<ConnectivityChangedEvent>(connectivitychangedMethod);
    on<NavigatePageEvent>(navigatToBookDetail);

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      add(ConnectivityChangedEvent(result));
      //connectivity1(result);
      // Received changes in available connectivity types!
    });

    add(GetUserEvent());
    // //   add(ContinueReadingEvent());
    // add(DashBoradTrendInitialEvent());
    // add(DashBoradEditorInitialEvent());
  }

  FutureOr<void> trendinitialmethod(
      DashBoradTrendInitialEvent event, Emitter<DashboardState> emit) async {
    try {
      emit(DashboardLoadingState());
      //final getdata = await getTrending('Bearer ${_user.jwtToken!}');
      final getdata = await _dashboardRemoteDataSource
          .getTrendingBook('Bearer ${_user.jwtToken!}');
      //    print("getdata :$getdata");

      emit(TrendbookState(booklist: getdata));
    } catch (e) {
      emit(DashBoardErrorState(erorr: e.toString()));
    }
  }

  FutureOr<void> getuser(
      GetUserEvent event, Emitter<DashboardState> emit) async {
    emit(DashboardLoadingState());

    final localuser = _dashBoardLocalDataSource.getUserName();
    _user = localuser;
    emit(UserNameState(name: localuser.name));
  }

  FutureOr<void> editorinitialmethod(
      DashBoradEditorInitialEvent event, Emitter<DashboardState> emit) async {
    try {
      emit(DashboardLoadingState());
      final getdata = await _dashboardRemoteDataSource
          .getEditorchoice('Bearer ${_user.jwtToken!}');
      // if (getdata.isNotEmpty) {
      //   //save data in local

      //   await _dashBoardLocalDataSource.saveeditorBooks(getdata);
      // }
      emit(EditorbookState(booklist: getdata));
      getdatabase.setBool('firstRefresh', true);
    } catch (e) {
      emit(DashBoardErrorState(erorr: e.toString()));
    }
  }

  @override
  Future<void> close() async {
    subscription.cancel();
    //close all data base
    //await _dashBoardLocalDataSource.closeBox();
    return super.close();
  }

  FutureOr<void> refrshmethod(
      RefreshEvent event, Emitter<DashboardState> emit) async {
    try {
      emit(DashboardLoadingState());
      final getdata = await _dashboardRemoteDataSource
          .getTrendingBook('Bearer ${_user.jwtToken!}');
      add(ContinueReadingEvent());
      emit(RefreshSuccess(booklist: getdata));

      add(RefreshEditorEvent());
    } catch (e) {
      emit(DashBoardErrorState(erorr: e.toString()));
    }
  }

  FutureOr<void> continueMethod(
      ContinueReadingEvent event, Emitter<DashboardState> emit) async {
    final bookprogressid = getdatabase.getString('lastid');
    print("bookprogressid:$bookprogressid");
    if (bookprogressid == null) {
      emit(ContinueReadingEmpty());
    } else {
      try {
        final User user = _dashBoardLocalDataSource.getUserName();
        final bookprogress = user.bookProgress.firstWhereOrNull(
            (bkprogress) => bkprogress.bookId == bookprogressid);

        if (bookprogress == null) {
          emit(ContinueReadingEmpty());
        } else {
          final getbook = await _dashboardRemoteDataSource.getBook(
              bookprogressid, 'Bearer ${_user.jwtToken!}');
          emit(ContinuereadState(book: getbook, bookProgress: bookprogress));
        }
      } catch (e) {
        print("dahbevent erro: $e");
        emit(DashBoardErrorState(erorr: e.toString()));
      }
    }
  }

  FutureOr<void> refrshEditorChoice(
      RefreshEditorEvent event, Emitter<DashboardState> emit) async {
    try {
      final getdata = await _dashboardRemoteDataSource
          .getEditorchoice('Bearer ${_user.jwtToken!}');

      emit(RefreshEditorchoiceSuccess(booklist: getdata));
    } catch (e) {
      emit(DashBoardErrorState(erorr: e.toString()));
    }
  }

  FutureOr<void> connectivitychangedMethod(
      ConnectivityChangedEvent event, Emitter<DashboardState> emit) async {
    // final List<ConnectivityResult> connectivityResult =
    //     await (Connectivity().checkConnectivity());
    // This condition is for demo purposes only to explain every connection type.
// Use conditions which work for your requirements.
    if (event.result.contains(ConnectivityResult.mobile)) {
      emit(const NetworkAvalbleState(msg: 'Mobile NetWork available'));
      add(DashBoradTrendInitialEvent());
      add(DashBoradEditorInitialEvent());

      add(ContinueReadingEvent());
      // Mobile network available.
    } else if (event.result.contains(ConnectivityResult.wifi)) {
      print('wifi connndid');
      emit(const NetworkAvalbleState(msg: 'wifi available'));
      add(ContinueReadingEvent());
      add(DashBoradTrendInitialEvent());
      add(DashBoradEditorInitialEvent());

      // Wi-fi is available.
      // Note for Android:
      // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
    } else if (event.result.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
    } else if (event.result.contains(ConnectivityResult.vpn)) {
      emit(const NetworkAvalbleState(msg: 'vpn available'));
      add(ContinueReadingEvent());
      add(DashBoradTrendInitialEvent());
      add(DashBoradEditorInitialEvent());

      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
    } else if (event.result.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
    } else if (event.result.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.
    } else if (event.result.contains(ConnectivityResult.none)) {
      // No available network types

      emit(const ErrorConnectionSate(msg: "Network Not availble"));
      add(DashBoradTrendInitialEvent());
      add(DashBoradEditorInitialEvent());
      // add(ContinueReadingEvent());
    }
  }

  FutureOr<void> navigatToBookDetail(
      NavigatePageEvent event, Emitter<DashboardState> emit) async {
    // add(ContinueReadingEvent());

  
    emit(NavigateSucessfull(book: event.book));
  }
}
