import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/config/context.config.dart';



import 'package:bookbazar/src/features/search/presentation/bloc/search_bloc.dart';
import 'package:bookbazar/src/features/search/presentation/widgets/bookcard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchbarWidget extends StatefulWidget {
  const SearchbarWidget({super.key});

  @override
  State<SearchbarWidget> createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  final FocusNode focusNode = FocusNode();

  final GlobalKey _searchAnchorKey = GlobalKey();
  @override
  void initState() {
    super.initState();

    focusNode.requestFocus();
    context.read<SearchBloc>().add(const SearchTapEvent(query: ''));
  }

  // void f(String txt) {
  //   context.read<SearchBloc>().add(SearchQueryChanged(query: txt));
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchAnchor(
            viewElevation: 0,
            viewHintText: "Gora",
            viewBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
            isFullScreen: true,
            key: _searchAnchorKey,
            builder: (BuildContext context, SearchController controller) {
              return Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                //color: Colors.white,
                width: context.widthParcentage(wparcentage: 74.5),
                padding: const EdgeInsets.only(left: 15),
                child: SearchBar(
                  backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 226, 236, 226)),
                  elevation: const MaterialStatePropertyAll(0.2),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  focusNode: focusNode,
                  controller: controller,
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                ),
              );
            },
            suggestionsBuilder:
                (BuildContext context, SearchController controller) {
              final searchbloc = DependencyInjection.sl<SearchBloc>();
              searchbloc.add(SearchTapEvent(query: controller.text));
              return [
                BlocConsumer<SearchBloc, SearchState>(
                  bloc: searchbloc,
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                
                    if (state is SearchStateSuccess) {
                      return SizedBox(
                        height: 700,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: state.bookenity?.length,
                          itemBuilder: (context, index) {
                            final listbook = state.bookenity;
                            return state.bookenity?[index].title != null
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: BookSearchview(
                                      author: listbook?[index].author.authorname,
                                      title: listbook?[index].title,
                                      bookcover: listbook?[index].bookCover,
                                      ishot: listbook?[index].isHot,
                                      rating: listbook?[index].rating,
                                      viewcount: listbook?[index].count,
                                      book: listbook![index],
                                    ),
                                  )
                                : const SizedBox();
                          },
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                )
              ];
            }),
        TextButton(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(12))),
          onPressed: () {
            if (kIsWeb) {
              
            } else {
              context.pop();
            }
          },
          child: const Text(
            "cancel",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
