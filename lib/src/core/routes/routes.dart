import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/routes/encoder/book.encode.dart';
import 'package:bookbazar/src/core/routes/names.dart';

import 'package:bookbazar/src/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:bookbazar/src/features/auth/presentation/pages/istimercheck.dart';
import 'package:bookbazar/src/features/auth/presentation/pages/pages.dart';
import 'package:bookbazar/src/features/book/bloc/book_bloc.dart';

import 'package:bookbazar/src/features/book/presentation/bokdeta.widget.dart';
import 'package:bookbazar/src/features/book/presentation/widget/bookdetail/bookcontent/bookcontent.widget.dart';
import 'package:bookbazar/src/features/categori/presentation/bloc/categori_bloc.dart';
import 'package:bookbazar/src/features/categori/presentation/pages/pages.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:bookbazar/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:bookbazar/src/features/library/presentation/bloc/library_bloc.dart';
import 'package:bookbazar/src/features/library/presentation/pages/pages.dart';
import 'package:bookbazar/src/features/navigationbar/bloc/navbar_bloc.dart';

import 'package:bookbazar/src/features/navigationbar/main.navigation.dart';
import 'package:bookbazar/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:bookbazar/src/features/profile/presentation/pages/pages.dart';
import 'package:bookbazar/src/features/reviews/bloc/review_bloc.dart';
import 'package:bookbazar/src/features/search/presentation/bloc/search_bloc.dart';
import 'package:bookbazar/src/features/search/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class AppRoute {
  AppRoute._();
  // Private navigators

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _sectionANavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
  static final routes = GoRouter(
      initialLocation: RoutesNameEnum.dashboard.path,
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      redirect: (context, state) async {
        //final librabloc = DependencyInjection.sl<LibraryBloc>();
        debugPrint(
            "ridirect method called for this route ${state.matchedLocation}");
        final authdatabox = DependencyInjection.sl<Box<User>>();
        final authdata = authdatabox.get('user');

        if (authdata != null) {
          if (state.matchedLocation == '/dashboard') {
            return "/dashboard";
          } else if (state.matchedLocation == '/library') {
            // print("libray called this time");
            // librabloc.add(const GetBookListHisEvent());
            return '/library';
          } else {
            return state.matchedLocation;
          }
        } else {
          return RoutesNameEnum.signin.path;
        }
      },
      routes: [
        GoRoute(
          path: RoutesNameEnum.isttime.path,
          name: RoutesNameEnum.isttime.name,
          pageBuilder: (context, state) => MaterialPage(
            child: BlocProvider(
              create: (_) => DependencyInjection.sl<AuthBloc>(),
              child: const IsFirstTimer(),
            ),
          ),
        ),
        GoRoute(
          path: RoutesNameEnum.signin.path,
          name: RoutesNameEnum.signin.name,
          pageBuilder: (context, state) => MaterialPage(
            child: BlocProvider(
              create: (_) => DependencyInjection.sl<AuthBloc>(),
              child: const AuthPage(),
            ),
          ),
        ),
        GoRoute(
          path: '/search',
          name: RoutesNameEnum.search.name,
          pageBuilder: (context, state) => MaterialPage(
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => DependencyInjection.sl<SearchBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<BookBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<DashboardBloc>(),
                )
              ],
              child: const SearchPage(),
            ),
          ),
        ),
        GoRoute(
          path: '/book/:title',
          name: RoutesNameEnum.book.name,
          pageBuilder: (context, state) {
            // final String? bookName = state.pathParameters['title'];
            // print("title :$bookName");
            final Book? book = state.extra as Book?;
            return MaterialPage(
                //maintainState: false,
                child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => DependencyInjection.sl<BookBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<ReviewBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<DashboardBloc>(),
                ),
              ],
              child: BookDetail(book: book!),
            ));
          },
        ),
        GoRoute(
            path: RoutesNameEnum.content.path,
            name: RoutesNameEnum.content.name,
            pageBuilder: (context, state) {
              final data = state.extra as BookcontentObj;
              return MaterialPage(
                child: MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (_) => DependencyInjection.sl<BookBloc>(),
                      ),
                   
                    ],
                    child: BookContent(
                      chapterList: data.chapterList,
                      currentIndex: data.index,
                    )),
              );
            }),
        StatefulShellRoute.indexedStack(
          builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => DependencyInjection.sl<NavbarBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<LibraryBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<BookBloc>(),
                ),
                BlocProvider(
                  create: (_) => DependencyInjection.sl<DashboardBloc>(),
                ),
              ],
              child: MainNavigationBarPage(navigationShell: navigationShell),
            );
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
                navigatorKey: _sectionANavigatorKey,
                routes: <RouteBase>[
                  GoRoute(
                      path: RoutesNameEnum.dashboard.path,
                      name: RoutesNameEnum.dashboard.name,
                      pageBuilder: (context, state) {
                        return const MaterialPage(
                          child: DashboardPage(),
                        );
                      }),
                ]),
            StatefulShellBranch(routes: <RouteBase>[
              GoRoute(
                  path: RoutesNameEnum.library.path,
                  name: RoutesNameEnum.library.name,
                  pageBuilder: (context, state) {
                    return const MaterialPage(
                        //  maintainState: false,
                        child: LibraryPage());
                  }),
            ]),
            StatefulShellBranch(routes: <RouteBase>[
              GoRoute(
                path: RoutesNameEnum.categories.path,
                name: RoutesNameEnum.categories.name,
                pageBuilder: (context, state) => MaterialPage(
                  child: MultiBlocProvider(providers: [
                    BlocProvider(
                      create: (_) => DependencyInjection.sl<CategoriBloc>(),
                    ),
                  
                  ], child: const CategoriPage()),
                ),
              ),
            ]),
            StatefulShellBranch(routes: <RouteBase>[
              GoRoute(
                path: RoutesNameEnum.profile.path,
                name: RoutesNameEnum.profile.name,
                pageBuilder: (context, state) => MaterialPage(
                  child: BlocProvider(
                      create: (_) => DependencyInjection.sl<ProfileBloc>(),
                      child: const ProfilePage()),
                ),
              ),
            ])
          ],
        )
      ],
      extraCodec: const BookExtraCodec());
}
