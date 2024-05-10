import 'package:flutter/material.dart';

class HotFlagPaintWidget extends StatelessWidget {
  final Widget child;
  final Size size;
  const HotFlagPaintWidget(
      {super.key, required this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 234, 9, 12)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.0020000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.3980000);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.2980000);
    path_0.lineTo(0, size.height * 0.3980000);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
