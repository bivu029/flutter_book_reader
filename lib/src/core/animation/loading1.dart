import 'package:bookbazar/src/core/paint/fl.pant.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(_animationController);
    _animationController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateZ(_animation.value),
              child:const SizedBox(
                height: 100,
                width: 100,
              child: FlowBgPaintWidget(size: Size(double.infinity, 400)),
              ),
            );
          }),
    );
  }
}
