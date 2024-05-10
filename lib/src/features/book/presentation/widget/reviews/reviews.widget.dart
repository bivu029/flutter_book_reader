// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/global/fakedata.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
        itemCount: fakeReviews.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ReviewbarWidget(
            index: index,
          );
        },
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

//note user class also needed
class ReviewbarWidget extends StatefulWidget {
  const ReviewbarWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<ReviewbarWidget> createState() => _ReviewbarWidgetState();
}

class _ReviewbarWidgetState extends State<ReviewbarWidget> {
  List<bool> expandedStates =
      List.generate(fakeReviews.length, (index) => false);

  void toggleExpansion(int index) {
    setState(() {
      expandedStates[index] = !expandedStates[index];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.green[200],
          radius: context.width * .053,
          child: CircleAvatar(
            radius: context.width * .0431,
            foregroundImage: const NetworkImage(
                "https://fastly.picsum.photos/id/1062/200/200.jpg?hmac=F_trr44XLYeth1u5FIqJIgtD4pR7WOlzKZ2xrQ3tzww"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: context.width * .807,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 226, 243, 232),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: EdgeInsets.only(
                  left: context.width * .0231,
                  top: 2,
                  right: context.width * .0128,
                  bottom: 2),
              margin: EdgeInsets.only(
                left: context.width * .0128,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    fakeReviews[widget.index].username,
                    style: TextStyle(
                        fontSize: context.width * .045,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    fakeReviews[widget.index].review,
                    style: TextStyle(
                      fontSize: context.width * .0368,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 5.0,
              ),
              padding: const EdgeInsets.all(2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: context.width * .0368,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        fakeReviews[widget.index].likeCount.toString(),
                        style: TextStyle(
                            fontSize: context.width * .045,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    width: context.width * .0249,
                  ),
                  Text(
                    "reply",
                    style: TextStyle(
                        fontSize: context.width * .045,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: context.width * .0249,
                  ),
                  GestureDetector(
                    onTap: () {
                      toggleExpansion(widget.index);
                    },
                    child: Text(
                      "load more...",
                      style: TextStyle(
                          fontSize: context.width * .045,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            expandedStates[widget.index] == true
                ? SizedBox(
                    width: context.width * .8,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          fakeReviews[widget.index].listSubreviews.length,
                      itemBuilder: (context, insideindex) {
                        return insideWidget(context, widget.index, insideindex);
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }

  Widget insideWidget(BuildContext context, int index, int insideindex) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.green[200],
          radius: context.width * .043,
          child: CircleAvatar(
            radius: context.width * .0331,
            foregroundImage: const NetworkImage(
                "https://fastly.picsum.photos/id/1062/200/200.jpg?hmac=F_trr44XLYeth1u5FIqJIgtD4pR7WOlzKZ2xrQ3tzww"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: context.width * .607,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 226, 243, 232),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: EdgeInsets.only(
                  left: context.width * .0231,
                  top: 2,
                  right: context.width * .0128,
                  bottom: 2),
              margin: EdgeInsets.only(
                left: context.width * .0128,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    fakeReviews[index].listSubreviews[insideindex].username,
                    style: TextStyle(
                        fontSize: context.width * .045,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    fakeReviews[index].listSubreviews[insideindex].userReply!,
                    style: TextStyle(
                      fontSize: context.width * .0368,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 5.0,
              ),
              padding: const EdgeInsets.all(2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: context.width * .0368,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        fakeReviews[index]
                            .listSubreviews[insideindex]
                            .likeCount
                            .toString(),
                        style: TextStyle(
                            fontSize: context.width * .045,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    width: context.width * .0249,
                  ),
                  Text(
                    "reply",
                    style: TextStyle(
                        fontSize: context.width * .045,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
