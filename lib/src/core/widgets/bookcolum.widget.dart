import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:bookbazar/src/core/widgets/bookview.widget.dart';

import 'package:flutter/material.dart';


class Bookcolumview extends StatelessWidget {
  ///initial count 6
  final List<Book?>? booklist;


  const Bookcolumview({
    super.key,
    this.booklist,

  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: booklist?.length ?? 6,
      itemBuilder: (context, index) {
        return Bookview(
          
          author: booklist?[index]?.author.authorname,
          title: booklist?[index]?.title,
          bookcover: booklist?[index]?.bookCover,
          ishot: booklist?[index]?.isHot,
          rating: booklist?[index]?.rating,
          viewcount: booklist?[index]?.count,
          book: booklist?[index],
        );
      },
    );
  }
}
