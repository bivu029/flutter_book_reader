// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bookbazar/src/core/routes/names.dart';
import 'package:bookbazar/src/core/widgets/placeholder/placeholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/library/presentation/bloc/library_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class BookCardWidget extends StatefulWidget {
  final List? book;
  const BookCardWidget({super.key, this.book});

  @override
  State<BookCardWidget> createState() => _BookCardWidgetState();
}

class _BookCardWidgetState extends State<BookCardWidget>    {
 
 

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LibraryBloc, LibraryState>(
      listener: (context, state) async {
        print("library state;$state");
        if (state is FromLibrayToBookdetailSucesss) {
          if (kIsWeb) {
            context.goNamed(RoutesNameEnum.book.name,
                pathParameters: {"title": state.book.title}, extra: state.book);
          } else {
            await GoRouter.of(context)
                .pushNamed(RoutesNameEnum.book.name,
                    pathParameters: {"title": state.book.title},
                    extra: state.book)
                .then((_) => context
                    .read<LibraryBloc>()
                    .add(const GetBookListHisEvent()));
          }
        }
      },
      builder: (context, state) {
        print("build :$state");
        switch (state.runtimeType) {
          case LibrayLoading:
            return ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return MyPlaceHolder.bookviewShimmerHistory();
              },
            );
          case GetLibrayListSuccess:
            final data = state as GetLibrayListSuccess;
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.booklist.length,
              itemBuilder: (context, index) {
                final book = data.booklist.firstWhere(
                    (element) => element.id == data.bookProgress[index].bookId);
                return LibrayBookList(
                  book: book,
                  bookProgress: data.bookProgress[index],
                );
              },
            );

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

class LibrayBookList extends StatelessWidget {
  const LibrayBookList({
    Key? key,
    required this.book,
    required this.bookProgress,
  }) : super(key: key);
  final Book book;
  final BookProgress bookProgress;
  @override
  Widget build(BuildContext context) {
    print(book.id);
    const String imag =
        "https://gravatar.com/avatar/067797c879fd3e9f9b7f006aebf98974?s=400&d=robohash&r=x";
    final double bookparcent =
        bookProgress.completChapterList.length / bookProgress.totalChapters;
    return GestureDetector(
      onTap: () {
        context
            .read<LibraryBloc>()
            .add(FromLibrayToBookdetailEvent(book: book));
      },
      child: Stack(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 18, bottom: 10, left: 10, right: 10),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 241, 240, 240),
            ),
          ),
          Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.only(
                  left: 25,
                ),
                color: Colors.grey,
                child: Image.network(
                  book.bookCover ?? imag,
                  height: 75,
                  width: 60,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 75,
                        width: 60,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        book.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(book.author.authorname,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black)),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              const Padding(
                padding: EdgeInsets.only(
                  right: 22,
                ),
                child: Text(
                  "READ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.green),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 86, left: 35, right: 35),
            child: LinearProgressIndicator(
              value:
                  bookparcent, // This represents the progress (50% in this case)
              backgroundColor: const Color.fromARGB(
                  255, 211, 210, 210), // Use a transparent background
              valueColor: const AlwaysStoppedAnimation<Color>(
                  Colors.green), // Progress color
              minHeight: 1.5, // Set the height of the progress bar
            ),
          ),
        ],
      ),
    );
  }
}
