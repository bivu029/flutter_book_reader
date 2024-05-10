// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/paint/bookdetailbg.paint.dart';

import 'package:bookbazar/src/features/book/presentation/widget/bookdetail/buttonbar.widget.dart';
import 'package:bookbazar/src/features/book/presentation/widget/bookdetail/information.widget.dart';

import 'package:flutter/material.dart';

import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:go_router/go_router.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
   
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        // context.read<DashboardBloc>().add(ContinueReadingEvent());
        //  context.read<BookBloc>().add(BookLoadingEvent());
        Future.delayed(
          Duration.zero,
          () async {
            Future.delayed(Duration.zero);
            GoRouter.of(context).pop();
          },
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            BookdetailBgPaintWidget(size: Size(context.width, context.hight)),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  //  expandedHeight: 80.0,

                  pinned: true,
                  floating: true,
                  expandedHeight: 220,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    centerTitle: true,
                    expandedTitleScale: 1.4,
                    background: Image.network(
                      book.bookCover!,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      book.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: InformationWidget(book: book),
                ),
                SliverToBoxAdapter(
                  child: ButtonBarWidget(
                    book: book,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
