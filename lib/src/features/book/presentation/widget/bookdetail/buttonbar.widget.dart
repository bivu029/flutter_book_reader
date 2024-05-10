// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookbazar/src/features/book/presentation/widget/bookdetail/chapter.widget.dart';
import 'package:bookbazar/src/features/book/presentation/widget/reviews/reviews.widget.dart';
import 'package:flutter/material.dart';

import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;
  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  final List<String> textList = ["Detail", "Chapters", "Similar", "Reviews"];
  int currentIndex = 0;
  PageController pageController = PageController();
  void onButtonTapped(int index) {
    setState(() {
      currentIndex = index;
     
      // Other logic when a button is tapped
    });
    pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: context.width * .0368),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: context.width,
          ),
          SizedBox(
            height: 40,
            width: context.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: textList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    onButtonTapped(index);
                  },
                  child: AnimatedContainer(
                    width: context.width * .21,
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(
                        horizontal: context.width * .025, vertical: 8),
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Colors.green[300]
                            : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(textList[index]),
                    ),
                  ),
                );
              },
            ),
          ),

          //main body
          SizedBox(
              width: context.width,
              height: context.hight * .58,
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                children: [
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.book.description,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  BookChapterWidget(
                    chapterList: widget.book.chapterList!,
                  ),
                  Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text("C"),
                    ),
                  ),
                  const ReviewsWidget()
                ],
              ))
        ],
      ),
    );
  }
}
