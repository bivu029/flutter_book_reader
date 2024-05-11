import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:bookbazar/src/features/dashboard/presentation/widgets/continue_read.widget.dart';
import 'package:bookbazar/src/features/dashboard/presentation/widgets/editors_choice.widget.dart';
import 'package:bookbazar/src/features/dashboard/presentation/widgets/trending_book.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: BlocListener<DashboardBloc, DashboardState>(
          listener: (context, state) {
          
            if (state is NetworkAvalbleState) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            } else if (state is ErrorConnectionSate) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.red,
                duration: const Duration(hours: 1),
              ));
            }
          },
          child: Scaffold(
            body: RefreshIndicator(
              onRefresh: () async {
                context.read<DashboardBloc>().add(RefreshEvent());
              },
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: 80.0,
                    floating: true,
                    pinned: false,
                    flexibleSpace: FlexibleSpaceBar(
                        expandedTitleScale: 1.4,
                        titlePadding: const EdgeInsets.only(top: 19, left: 10),
                        title: Row(
                          children: [
                            BlocBuilder<DashboardBloc, DashboardState>(
                              buildWhen: (previous, current) =>
                                  current is UserNameState,
                              builder: (context, state) {
                                if (state is UserNameState) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Good Morning",
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        state.name,
                                        style: const TextStyle(
                                            fontSize: 15.5,
                                            color: Colors.black),
                                      )
                                    ],
                                  );
                                }
                                return const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Good Morning",
                                      style: TextStyle(
                                          fontSize: 13.5, color: Colors.black),
                                    ),
                                    Text(
                                      "Bivas",
                                      style: TextStyle(
                                          fontSize: 15.5, color: Colors.black),
                                    )
                                  ],
                                );
                              },
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            IconButton(
                                splashRadius: 5,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_none,
                                  size: 16,
                                )),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        )),
                  ),
                  const SliverToBoxAdapter(
                    child: Column(
                      children: <Widget>[
                        ContinueReadingWidget(),
                        TrendingWidget(),
                        EditorChoiceWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
