import 'package:bookbazar/src/core/widgets/placeholder/placeholder.dart';
import 'package:bookbazar/src/core/widgets/toplist.widget.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Trending Books",
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
            buildWhen: (previous, current) =>
                current is TrendbookState ||
                current is RefreshSuccess ||
                current is DashboardLoadingState,
            builder: (context, state) {
            

              if (state is TrendbookState) {
                return CardTop(
                  entity: state.booklist,
                  itemcount: state.booklist.length,
                );
              } else if (state is RefreshSuccess) {
                return CardTop(
                  entity: state.booklist,
                  itemcount: state.booklist.length,
                );
              }
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        6, // Adjust the number of shimmer cards as needed
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            margin: const EdgeInsets.only(
                                right: 5, top: 5, bottom: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: Colors.grey,
                            child: Container(
                              height: 125,
                              width: 100,
                              color: Colors.white,
                            ),
                          ),
                          MyPlaceHolder.textHolder(const Size(100, 20))
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
