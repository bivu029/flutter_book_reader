import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/widgets/hot.widget.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class BookSearchview extends StatelessWidget {
  const BookSearchview({
    super.key,
    this.title,
    this.author,
    this.rating,
    this.viewcount,
    this.bookcover,
    this.ishot,
    this.book,
  });

  final String? title;
  final String? author;
  final double? rating;
  final String? bookcover;
  final int? viewcount;
  final bool? ishot;
  final Book? book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 2),
      child: InkWell(
        onTap: () {},
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.only(right: 20, top: 5, bottom: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              // margin: const EdgeInsets.only(left: 33, bottom: 30),
              color: Colors.grey,
              child: Stack(
                children: [
                  Image.network(
                    bookcover ??
                        "https://fastly.picsum.photos/id/1062/200/200.jpg?hmac=F_trr44XLYeth1u5FIqJIgtD4pR7WOlzKZ2xrQ3tzww",
                    height: 120,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  ishot != null || ishot == true
                      ? const HotWidget(
                          tpadding: 6,
                          dpadding: 0,
                          lpadding: 1,
                          rpadding: 0,
                          name: "HOT",
                          textsize: 8,
                          textcolor: Colors.white,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 170,
                  child: Text(
                    title ?? "No title",
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 125,
                  child: Text(
                    author ?? "skpk ysygsgsg007",
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                const RatingBar.readOnly(
                  size: 25,
                  isHalfAllowed: true,
                  alignment: Alignment.centerLeft,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  emptyColor: Colors.greenAccent,
                  filledColor: Colors.greenAccent,
                  halfFilledColor: Colors.greenAccent,
                  halfFilledIcon: Icons.star_half,
                  initialRating: 4,
                  maxRating: 5,
                ),

                //rating
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 2),
                  width: 120,
                  child: Text(
                    viewcount != null ? "views: $viewcount" : "views: 100001+",
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
