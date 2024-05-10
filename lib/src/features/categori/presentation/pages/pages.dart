import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/core/config/screenHightWidth.config.dart';
import 'package:bookbazar/src/core/paint/search_category.paint.dart';
import 'package:bookbazar/src/core/routes/names.dart';
import 'package:bookbazar/src/core/widgets/toplist.widget.dart';
import 'package:bookbazar/src/features/categori/presentation/widgets/gridview.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoriPage extends StatelessWidget {
  const CategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SearchCustomPAint(size: Size(double.infinity, AppScreen.height)),

            Container(
              margin: EdgeInsets.only(
                top: AppScreen.height * .0487,
                left: AppScreen.width * .051,
              ),
              child: const Text(
                "Search Books",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),

            ///search bar
            InkWell(
              onTap: () {
                if (kIsWeb) {
                  context.goNamed(RoutesNameEnum.search.name);
                } else {
                    GoRouter.of(context).pushNamed(RoutesNameEnum.search.name,
               );
                }
              },
              child: Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(
                    top: AppScreen.height * .094, left: 20, right: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceAr,
                  children: [
                    SizedBox(
                      width: AppScreen.width * .032,
                    ),
                    const Icon(Icons.search),
                    SizedBox(
                      width: AppScreen.width * .032,
                    ),
                    const Text(
                      "Search Stories ,Novels,Poems more",
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
            //top 10
            Container(
              margin: EdgeInsets.only(
                  top: AppScreen.height * .18, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top 10",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  CardTop(
                    totalhight: AppScreen.height * .2406,
                    imageHight: AppScreen.height * .135,
                    imageWidth: AppScreen.width * .216,
                    titleSize: 13,
                    authorSize: 12,
                  ),
                  SizedBox(
                    height: context.hight * .025,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: (AppScreen.width - 40) * .357,
                    ),
                    child: const Text(
                      " Genere",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  const GridViewGenreWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
