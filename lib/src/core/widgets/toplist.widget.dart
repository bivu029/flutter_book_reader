// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/routes/names.dart';
import 'package:bookbazar/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CardTop extends StatelessWidget {
  final List<Book?> entity;
  final double? imageHight;
  final double? imageWidth;

  /// 18
  final double? titleSize;

  ///15
  final double? authorSize;

  ///5
  final double? rMargin;

  ///5
  final double? tMargin;
  //180
  final double? totalhight;

  ///6
  final int? itemcount;

  ///title text
  final String? titleText;
  final String? autherTxt;
  final String? imageString;
  const CardTop({
    Key? key,
    this.entity = const [],
    this.imageHight,
    this.imageWidth,
    this.titleSize,
    this.authorSize,
    this.rMargin,
    this.tMargin,
    this.totalhight,
    this.itemcount,
    this.titleText,
    this.autherTxt,
    this.imageString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String avatar =
        "https://gravatar.com/avatar/067797c879fd3e9f9b7f006aebf98974?s=400&d=robohash&r=x";

    return BlocListener<DashboardBloc, DashboardState>(
      listener: (context, state) async {
  
        if (state is NavigateSucessfull) {
          if (kIsWeb) {
            if (kIsWeb) {
              context.goNamed(RoutesNameEnum.book.name,
                  pathParameters: {"title": state.book.title},
                  extra: state.book);
            } else {
              await GoRouter.of(context)
                  .pushNamed(RoutesNameEnum.book.name,
                      pathParameters: {"title": state.book.title},
                      extra: state.book);
                 
            }
          }
        }
      },
      child: SizedBox(
        height: totalhight ?? 180,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemcount ?? 6,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                context
                    .read<DashboardBloc>()
                    .add(NavigatePageEvent(book: entity[index]!));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.only(
                        right: rMargin ?? 5, top: tMargin ?? 5, bottom: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    // margin: const EdgeInsets.only(left: 33, bottom: 30),
                    color: Colors.grey,
                    child: Image.network(
                        entity.isNotEmpty
                            ? entity[index]?.bookCover ?? avatar
                            : avatar,
                        height: imageHight ?? 125,
                        width: imageWidth ?? 100,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          height: imageHight ?? 125,
                          width: imageWidth ?? 100,
                          color: Colors.white,
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    width: imageWidth ?? 100,
                    child: Text(
                      entity.isNotEmpty
                          ? entity[index]?.title ?? 'no title'
                          : 'no title',
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: titleSize ?? 18,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: imageWidth ?? 80,
                    child: Text(
                      entity.isNotEmpty
                          ? entity[index]?.author.authorname ?? 'no author'
                          : 'no author',
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: authorSize ?? 15,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
