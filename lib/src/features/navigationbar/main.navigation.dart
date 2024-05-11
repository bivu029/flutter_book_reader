// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:bookbazar/src/features/library/presentation/bloc/library_bloc.dart';

import 'package:bookbazar/src/features/navigationbar/bloc/navbar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class MainNavigationBarPage extends StatefulWidget {
  const MainNavigationBarPage({
    Key? key,
    required this.navigationShell,
    //  required this.authEntity,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));
  final StatefulNavigationShell navigationShell;
  // final AuthEntity authEntity;
  @override
  State<MainNavigationBarPage> createState() => _MainNavigationBarPageState();
}

class _MainNavigationBarPageState extends State<MainNavigationBarPage> {
  final iconlist = <IconData>[
    Icons.dashboard,
    Icons.library_books,
    Icons.category,
    Icons.person
  ];
  final textlist = <String>["DashBoard", "Library", "Category", "Profile"];
  void navigate(BuildContext context, int index) {
    final path =
        widget.navigationShell.route.branches[index].defaultRoute?.path;

    if (path == '/library') {
      context.read<LibraryBloc>().add(const GetBookListHisEvent());
    } else if (path == "/dashboard") {
      final authdatabox = DependencyInjection.sl<Box<User>>();
      final authdata = authdatabox.get('user');
      if (authdata!.bookProgress.isNotEmpty) {
  
        context.read<DashboardBloc>().add(TodashBoardContinueEvent());
      }
    }
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, state) {
      
        return Scaffold(
          body: widget.navigationShell,

          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
              activeIndex: state is NavbarchangeState ? state.index : 0,
              itemCount: iconlist.length,
              tabBuilder: (int index, bool isActive) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        iconlist[index],
                        color: isActive ? Colors.green : Colors.black,
                      ),
                      Text(
                        textlist[index],
                        style: TextStyle(
                          fontSize: 11,
                          color: isActive ? Colors.green : Colors.black,
                        ),
                      )
                    ],
                  ),
                );
              },
              gapLocation: GapLocation.none,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              onTap: (index) {
                context.read<NavbarBloc>().add(NavigationTapEvent(index));
                navigate(context, index);
              }),
          //other params
        );
      },
    );
  }
}
