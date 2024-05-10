import 'package:bookbazar/src/core/widgets/tabbar.widget.dart';

import 'package:bookbazar/src/features/library/presentation/widgets/favorite.widget.dart';
import 'package:bookbazar/src/features/library/presentation/widgets/recent.widget.dart';
import 'package:flutter/material.dart';


class LibraryPage extends StatefulWidget {

  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("My Library"),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 213, 253, 215),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        tabs: [
                          TabbarItemWidget(title: "History"),
                          TabbarItemWidget(title: "Favourite"),
                          TabbarItemWidget(title: "Downloaded"),
                        ]),
                  ),
                ),
              ),
            ),
            body: const TabBarView(children: [
              RecentWidget(),
              Favourite(),
              Center(
                child: Text("page3"),
              )
            ]),
          )),
    );
  }
}
