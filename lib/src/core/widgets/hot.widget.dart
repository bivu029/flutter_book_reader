import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookbazar/src/core/animation/animated_text.animate.dart';
import 'package:bookbazar/src/core/constants/colors.dart';
import 'package:bookbazar/src/core/paint/hot_custom.paint.dart';

import 'package:flutter/material.dart';

class HotWidget extends StatelessWidget {
  final Size? widegtsize;
  final double tpadding;
  final double dpadding;
  final double rpadding;
  final double lpadding;
  final String? name;
  final int? txtanimDuration;

  ///9
  final double? textsize;
  final Color? textcolor;
  const HotWidget({
    super.key,
    this.widegtsize,
    required this.tpadding,
    required this.dpadding,
    required this.rpadding,
    required this.lpadding,
    this.name,
    this.txtanimDuration,
    this.textsize, this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HotFlagPaintWidget(
          size: widegtsize ?? const Size(80, 70),
          child: Container(),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: tpadding, left: lpadding, right: rpadding, bottom: dpadding),
          child: Textanimation(animatedtext: [
            ColorizeAnimatedText(name ?? "HOT",
            
                speed: Duration(milliseconds: txtanimDuration ?? 700),
                textStyle: TextStyle(fontSize: textsize ?? 9,color: textcolor??Colors.black),
                colors: AppColor.colorizeColors)
          ]),
        ),
      ],
    );
  }
}
