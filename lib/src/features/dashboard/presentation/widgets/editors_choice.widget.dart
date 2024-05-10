import 'package:bookbazar/src/core/widgets/bookcolum.widget.dart';
import 'package:bookbazar/src/core/widgets/placeholder/placeholder.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditorChoiceWidget extends StatelessWidget {
  const EditorChoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("EdiTor's Choice",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black)),
              Text("See all",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.green))
            ],
          ),
          BlocBuilder<DashboardBloc, DashboardState>(
            buildWhen: (previous, current) {
              return current is EditorbookState ||
                  current is RefreshEditorchoiceSuccess ||
                  current is DashboardLoadingState;
            },
            builder: (context, state) {
             
              switch (state.runtimeType) {
                case EditorbookState:
                  final editorState = state as EditorbookState;
                  return Bookcolumview(
                    booklist: editorState.booklist,
                  );
                  case RefreshEditorchoiceSuccess :
                   final editorState = state as RefreshEditorchoiceSuccess;
                  return Bookcolumview(
                    booklist: editorState.booklist,
                  );
                case DashboardLoadingState:
                  return MyPlaceHolder.bookviewShimmer();
                default:
                  return MyPlaceHolder
                      .bookviewShimmer(); // or return your shimmer effect
              }
            },
          )
        ],
      ),
    );
  }
}
