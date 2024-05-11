// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_animated/auto_animated.dart';

import 'package:bookbazar/src/core/routes/names.dart';
import 'package:bookbazar/src/features/book/bloc/book_bloc.dart';

import 'package:flutter/material.dart';

import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookChapterWidget extends StatefulWidget {
  const BookChapterWidget({
    Key? key,
    this.bookprogress,
    required this.chapterList,
  }) : super(key: key);
  final BookProgress? bookprogress;
  final ChapterList chapterList;

  @override
  State<BookChapterWidget> createState() => _BookChapterWidgetState();
}

class _BookChapterWidgetState extends State<BookChapterWidget> {
  @override
  void initState() {
    context.read<BookBloc>().add(SaveBookInitialProgresEvent(
        bookprogress: widget.bookprogress, chapterList: widget.chapterList));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const options = LiveOptions(
      // Start animation after (default zero)
      delay: Duration(milliseconds: 500),

      // Show each item through (default 250)
      showItemInterval: Duration(milliseconds: 200),

      // Animation duration (default 250)
      showItemDuration: Duration(milliseconds: 300),

      // Animations starts at 0.05 visible
      // item fraction in sight (default 0.025)
      visibleFraction: 0.05,

      // Repeat the animation of the appearance
      // when scrolling in the opposite direction (default false)
      // To get the effect as in a showcase for ListView, set true
      reAnimateOnVisibility: false,
    );
    return BlocConsumer<BookBloc, BookState>(
      // buildWhen: (previous, current) {
      //   return current is SaveLocalProgressSucess ||
      //       current is BookLoadingState ||
      //       current is SavetapSuccess;
      // },
      //   listenWhen: (previous, current) {
      //   return current is SavetapSuccess || current is BookLoadingState;
      // },
      listener: (context, state) {
        if (state is SavetapSuccess) {
          BookcontentObj bookcontentObj = BookcontentObj(
              index: state.currentIndex, chapterList: widget.chapterList);
          GoRouter.of(context)
              .pushNamed(RoutesNameEnum.content.name, extra: bookcontentObj);
          // context.pushMyNamed(RoutesNameEnum.content.name, data: chapter);
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case SaveLocalProgressSucess:
            final statedata = state as SaveLocalProgressSucess;
            return LiveGrid.options(
              padding: const EdgeInsets.only(left: 5, right: 4, top: 5),
              options: options,

              // Like GridView.builder, but also includes animation property
              itemBuilder: (context, index, animation) {
                return buildAnimatedItem(context, index, animation);
              },

              // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
              itemCount: statedata.chapterList.chapter.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
            );
          case SavetapSuccess:
            final statedata = state as SavetapSuccess;
            return LiveGrid.options(
              padding: const EdgeInsets.only(left: 5, right: 4, top: 5),
              options: options,

              // Like GridView.builder, but also includes animation property
              itemBuilder: (context, index, animation) {
                return buildAnimatedItem(context, index, animation);
              },

              // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
              itemCount: statedata.chapterList.chapter.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }

  // Build animated item (helper for all examples)
  Widget buildAnimatedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    //final chapterid = chapterList.chapter[index].id.replaceAll('chapter', '');
    return // For example wrap with fade transition
        FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: GestureDetector(onTap: () {
         
          context.read<BookBloc>().add(SaveTapEvent(
              chapterList: widget.chapterList, currentChapterIndex: index));
         
        }, child: BlocBuilder<BookBloc, BookState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case SaveLocalProgressSucess:
                final statedata = state as SaveLocalProgressSucess;
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: statedata.bookprogress != null
                              ? statedata.bookprogress!.completChapterList
                                      .contains(index)
                                  ? Colors.black26
                                  : Colors.green.shade100
                              : Colors.green.shade100,
                          width: 3),
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(widget.chapterList.chapter[index].id
                            .replaceAll('chapter', '')),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: statedata.bookprogress != null
                            ? index == statedata.bookprogress!.currentChapter
                                ? const Icon(
                                    Icons.done_all,
                                    size: 15,
                                    color: Colors.green,
                                  )
                                : const SizedBox()
                            : const SizedBox(),
                      )
                    ],
                  ),
                );
              case SavetapSuccess:
                final statedata = state as SavetapSuccess;
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: statedata.bookprogress != null
                              ? statedata.bookprogress!.completChapterList
                                      .contains(index)
                                  ? Colors.black26
                                  : Colors.green.shade100
                              : Colors.green.shade100,
                          width: 3),
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(widget.chapterList.chapter[index].id
                            .replaceAll('chapter', '')),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: statedata.bookprogress != null
                            ? index == statedata.bookprogress!.currentChapter
                                ? const Icon(
                                    Icons.done_all,
                                    size: 15,
                                    color: Colors.green,
                                  )
                                : const SizedBox()
                            : const SizedBox(),
                      )
                    ],
                  ),
                );

              default:
                return Align(
                  alignment: Alignment.bottomRight,
                  child: widget.bookprogress != null
                      ? index == widget.bookprogress!.currentChapter
                          ? const Icon(
                              Icons.done_all,
                              size: 15,
                              color: Colors.green,
                            )
                          : const SizedBox()
                      : const SizedBox(),
                );
            }
          },
        )),
      ),
    );
  }
}
