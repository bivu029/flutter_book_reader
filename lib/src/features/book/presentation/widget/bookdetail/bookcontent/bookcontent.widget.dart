// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';


class BookContent extends StatefulWidget {
  const BookContent({
    Key? key,
    required this.chapterList,
    required this.currentIndex,
  }) : super(key: key);
  final ChapterList chapterList;
  final int currentIndex;

  @override
  State<BookContent> createState() => _BookContentState();
}

class _BookContentState extends State<BookContent> {
  bool isappear = false;
  void isappearMethod() {
    setState(() {
      isappear = !isappear;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(chapter.title),
        // ),
        body: Stack(
          children: [
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.primaryVelocity! > 0) {
                  print("r");
                  // User swiped Left
                } else if (details.primaryVelocity! < 0) {
                  // User swiped Right
                  print("l");
                }
              },
              // onPanUpdate: (details) {
              //   // Swiping in right direction.
              //   if (details.delta.dx > 0) {}

              //   // Swiping in left direction.
              //   if (details.delta.dx < 0) {
              //     GoRouter.of(context).pushNamed(RoutesNameEnum.content.name,
              //         extra: (widget.chapter, widget.currentIndex + 1));
              //   }
              // },
              onTap: () {
                isappearMethod();
              },
              child: SizedBox(
                height: context.hight,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height:20 ,
                          width: context.width * 8,
                        ),
                        Text(
                          widget.chapterList.chapter[widget.currentIndex].content,
                          style: const TextStyle(fontSize: 18),
                          maxLines: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            isappear == true
                ? Container(
                    color: Colors.black38,
                    height: 50,
                    width: context.width,
                  )
                : const SizedBox(),
            isappear == true
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black38,
                      height: 70,
                      width: context.width,
                    ),
                  )
                : const Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(),
                  ),
          ],
        ),
      ),
    );
  }
}
