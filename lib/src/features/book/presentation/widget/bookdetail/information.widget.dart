import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  final Book book;
  const InformationWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: context.width * .9,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 251, 252, 251),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Author",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              Text(book.author.authorname,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700))
            ],
          ),
          const VerticalDivider(
            indent: 25,
            endIndent: 25,
            color: Colors.black54,
            thickness: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Rating",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Text(book.rating.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700))
            ],
          ),
          const VerticalDivider(
            indent: 25,
            endIndent: 25,
            color: Colors.black54,
            thickness: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Read",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Text(book.count.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700))
            ],
          ),
          const VerticalDivider(
            indent: 25,
            endIndent: 25,
            color: Colors.black54,
            thickness: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Page",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                book.chapterList!.chapter.length.toString(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ],
      ),
    );
  }
}
