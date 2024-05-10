import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyPlaceHolder {
  static Widget textHolder(Size size) {
    return Builder(
      builder: (context) {
        return Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          margin: const EdgeInsets.all(0),
        );
      },
    );
  }

  static Widget bookviewShimmer() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 2),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Row(
              children: [
                Card(
                  margin: const EdgeInsets.only(right: 20, top: 5, bottom: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.grey,
                  child: Container(
                    height: 120,
                    width: 100,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 160,
                      height: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 120,
                      height: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(
                        height: 25,
                        width: 100,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.greenAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.greenAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.greenAccent,
                            ),
                          ],
                        )),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 120,
                      height: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget bookviewShimmerHistory() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 2),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Row(
              children: [
                Card(
                  margin: const EdgeInsets.only(right: 20, top: 5, bottom: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.grey,
                  child: Container(
                    height: 100,
                    width: 80,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 160,
                      height: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 120,
                      height: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(left: 2),
                      width: 120,
                      height: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
