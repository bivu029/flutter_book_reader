import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BookdetailBgPaintWidget extends StatelessWidget {
  final Widget? child;
  final Size size;
  const BookdetailBgPaintWidget({super.key, this.child, required this.size});

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
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill0.shader = ui.Gradient.linear(
        Offset(size.width * -0.00, size.height * 1.00),
        Offset(size.width * 1.00, size.height * 0.00),
        [const Color(0xffd8d8d8), const Color(0xffffffff)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0012500, size.height * 0.0006250);
    path_0.lineTo(size.width * 0.0012500, size.height * 0.9981250);
    path_0.lineTo(size.width * 0.9987500, size.height * 0.9993750);
    path_0.lineTo(size.width * 1.0012500, size.height * 0.0006250);
    path_0.lineTo(size.width * -0.0012500, size.height * 0.0006250);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
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
