library dependency_injection;

import 'package:bookbazar/firebase_options.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:bookbazar/src/features/auth/data/implements/implements.dart';
import 'package:bookbazar/src/features/auth/data/models/auth_clinet.dart';

import 'package:bookbazar/src/features/auth/data/sources/auth_local.data.dart';

import 'package:bookbazar/src/features/auth/data/sources/auth_remote.dart';
import 'package:bookbazar/src/features/auth/domain/repositories/repositories.dart';
import 'package:bookbazar/src/features/auth/domain/usecases/jwt.usecase.dart';

import 'package:bookbazar/src/features/auth/domain/usecases/server_sign.dart';
import 'package:bookbazar/src/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:bookbazar/src/features/book/bloc/book_bloc.dart';
import 'package:bookbazar/src/features/book/data/client/book.client.dart';
import 'package:bookbazar/src/features/book/data/client/updatebook.user.dart';
import 'package:bookbazar/src/features/book/data/local/local.datat.dart';
import 'package:bookbazar/src/features/book/data/remote/remote.dart';
import 'package:bookbazar/src/features/categori/presentation/bloc/categori_bloc.dart';
import 'package:bookbazar/src/features/dashboard/data/models/client.model.dart';
import 'package:bookbazar/src/features/dashboard/data/sources/local/localsouce.data.dart';
import 'package:bookbazar/src/features/dashboard/data/sources/remote/sources.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:bookbazar/src/features/library/data/models/client.dart';
import 'package:bookbazar/src/features/library/data/sources/sources.dart';
import 'package:bookbazar/src/features/library/presentation/bloc/library_bloc.dart';
import 'package:bookbazar/src/features/navigationbar/bloc/navbar_bloc.dart';
import 'package:bookbazar/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:bookbazar/src/features/reviews/bloc/review_bloc.dart';

import 'package:bookbazar/src/features/search/data/sources/sources.dart';

import 'package:bookbazar/src/features/search/presentation/bloc/search_bloc.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DependencyInjection {
  static final sl = GetIt.instance;
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Hive.initFlutter();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    final preferences = await SharedPreferences.getInstance();
 
    //////local data base hive /////
    // Register adapters for your Hive models
    Hive.registerAdapter(ChapterImplAdapter());
    Hive.registerAdapter(ChapterListImplAdapter());
    Hive.registerAdapter(AuthorImplAdapter());
    Hive.registerAdapter(GenreImplAdapter());
    Hive.registerAdapter(SubGenreImplAdapter());
    Hive.registerAdapter(SubscriptionImplAdapter());
    Hive.registerAdapter(BookProgressImplAdapter());
    Hive.registerAdapter(ReadHistoryImplAdapter());
    Hive.registerAdapter(FavouriteBooksImplAdapter());
    Hive.registerAdapter(UploadedBooksImplAdapter());
    Hive.registerAdapter(ReviewsImplAdapter());
    Hive.registerAdapter(SubReviewsImplAdapter());
    Hive.registerAdapter(BookcontentObjImplAdapter());
    Hive.registerAdapter(UserImplAdapter());

    Hive.registerAdapter(BookImplAdapter());

    var userHive = await Hive.openBox<User>('user');
    // var trendbookHive = await Hive.openBox<Book?>('trendbooks');
    // var editorchoicebookHive = await Hive.openBox<Book?>('editorchoice');
    var bookprogressHive = await Hive.openBox<BookProgress?>('bookprogress');
    //get///
    sl
      ..registerFactory(() => AuthBloc(serverSignCase: sl(), jwtUseCase: sl()))
      ..registerLazySingleton(() => ServerSignCase(authRepository: sl()))
      ..registerLazySingleton(() => JwtUseCase(authRepository: sl()))
      ..registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImp(remoteDataSource: sl(), localDataImp: sl()))
      ..registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteImp(
          client: sl(), preferences: sl(), authLocalDataImp: sl()))
      ..registerLazySingleton(() => AuthClient(sl()))
      ..registerLazySingleton<Dio>(() => Dio())
      ..registerLazySingleton(() => AuthLocalDataImp(box: sl()))
      ..registerLazySingleton<SharedPreferences>(() => preferences)
      ..registerLazySingleton<Box<User>>(
        () => userHive,
      );
    //library
    sl..registerFactory(() => LibraryBloc(libraryRemoteDataSource: sl()))
    ..registerLazySingleton<LibraryRemoteDataSource>(() => LibraryRemoteImp(librayClient: sl()))
    ..registerLazySingleton(() => LibrayClient(sl()));
    //search
    sl
      ..registerFactory(() => SearchBloc(searchRemoteDataSource: sl()))
      ..registerLazySingleton<SearchRemoteDataSource>(() => SearchRemoteImp());
    //caregories
    sl.registerFactory(() => CategoriBloc());
    //profile
    sl.registerFactory(() => ProfileBloc());
    //nav bar
    sl.registerFactory(() => NavbarBloc());
    //book bloc
    sl
      ..registerFactory(
          () => BookBloc(localdataSource: sl(), remoteDataSource: sl()))
      ..registerLazySingleton<LocaldataSource>(() => LocaldataImp())
      ..registerLazySingleton<RemoteDataSource>(
          () => RemotedataImp(updateBookUserClinet: sl(),bookclinet: sl()))
      ..registerLazySingleton(() => UpdateBookUserClinet(sl()))
      ..registerLazySingleton(() => BookClinet(sl()))
      ..registerLazySingleton(() => bookprogressHive,
          instanceName: 'bookprogress');
    //review bloc
    sl.registerFactory(() => ReviewBloc());
    //dash bord bloc
    sl
      ..registerFactory(() => DashboardBloc(
          dashBoardLocalDataSource: sl(), dashboardRemoteDataSource: sl()))
      ..registerLazySingleton<DashBoardLocalDataSource>(
          () => LocalDatasourceimp(userbox: userHive))
      ..registerLazySingleton<DashboardRemoteDataSource>(
          () => DashBordRemoteImp(
                dashboardClient: sl(),
              ))
      ..registerLazySingleton(() => DashboardClient(sl()));
  }
}
