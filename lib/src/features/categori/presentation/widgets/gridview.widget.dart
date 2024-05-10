// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookbazar/src/core/config/context.config.dart';
import 'package:bookbazar/src/features/categori/domain/entities/entities.dart';
import 'package:flutter/material.dart';

class GridViewGenreWidget extends StatelessWidget {
  ///75,60
  final Size? imageSize;

  ///5
  final double? gapHight;
  //3
  final int? crossaxisCount;

  /// if not exist it will use local category
  final GenreCategory? gnerecategory;

  const GridViewGenreWidget({
    Key? key,
    this.imageSize,
    this.gapHight,
    this.crossaxisCount,
    this.gnerecategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: gnerecategory?.genreList?.length ??
          localgenercategory.genreList!.length,
      itemBuilder: (context, index) {
        return Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gnerecategory?.genreList?[index].name ??
                  localgenercategory.genreList![index].name,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
         
             GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: gnerecategory?.genreList?[index].subGenres.length ??
                  localgenercategory.genreList![index].subGenres.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossaxisCount ?? 4,
              crossAxisSpacing: 5,
            
               childAspectRatio: .7
              ),
              itemBuilder: (context, indexitem) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                         color: Colors.grey.shade400,
                        borderRadius:const BorderRadius.all(Radius.circular(5))),
                      
                     
                      child: Image.network(
                        gnerecategory?.genreList?[index].subGenres[indexitem]
                                .imageUrl ??
                            localgenercategory.genreList![index]
                                .subGenres[indexitem].imageUrl,
                      
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: gapHight ?? 5,
                    ),
                    SizedBox(
                 
                      width: imageSize?.width ?? context.width - 40 * 3,
                      child: Text(
                        gnerecategory?.genreList?[index].subGenres[indexitem]
                                .name ??
                            localgenercategory
                                .genreList![index].subGenres[indexitem].name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}
