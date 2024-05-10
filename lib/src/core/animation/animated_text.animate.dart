import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Textanimation extends StatelessWidget {
  final List<AnimatedText> animatedtext;
  const Textanimation({super.key, required this.animatedtext});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 250.0,
      child: AnimatedTextKit(
        animatedTexts: animatedtext,
        isRepeatingAnimation: true,
        repeatForever: true,
      ),
    );
  }
}
