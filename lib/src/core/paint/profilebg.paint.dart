import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ProfileBgPaintWidget extends StatelessWidget {
  final Widget? child;
  final Size size;
  const ProfileBgPaintWidget(
      {super.key, this.child, required this.size});

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
        Offset(0, size.height * 0.16),
        Offset(size.width, size.height * 0.16),
        [const Color(0xff7df9a5), const Color(0xffffffff)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0025000, size.height * 0.1868750);
    path_0.cubicTo(
        size.width * 0.0109500,
        size.height * 0.2236000,
        size.width * 0.0431250,
        size.height * 0.2417250,
        size.width * 0.1250000,
        size.height * 0.2487500);
    path_0.cubicTo(
        size.width * 0.2037500,
        size.height * 0.2496875,
        size.width * 0.6881250,
        size.height * 0.2496875,
        size.width * 0.8762500,
        size.height * 0.2512500);
    path_0.quadraticBezierTo(size.width * 0.9622000, size.height * 0.2559375,
        size.width, size.height * 0.3125000);
    path_0.lineTo(size.width, size.height * -0.0012500);
    path_0.lineTo(0, 0);
    path_0.quadraticBezierTo(size.width * 0.0006250, size.height * 0.0467188,
        size.width * 0.0025000, size.height * 0.1868750);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1 Copy

    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    paintFill1.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, size.height * 0.31),
        Offset(size.width, size.height * -0.00),
        [const Color(0xb788f7a4), const Color(0xffffffff)],
        [0.00, 1.00]);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0025000, size.height * 0.1868750);
    path_1.cubicTo(
        size.width * 0.0109500,
        size.height * 0.2236000,
        size.width * 0.0431250,
        size.height * 0.2417250,
        size.width * 0.1250000,
        size.height * 0.2487500);
    path_1.cubicTo(
        size.width * 0.2037500,
        size.height * 0.2496875,
        size.width * 0.6881250,
        size.height * 0.2496875,
        size.width * 0.8762500,
        size.height * 0.2512500);
    path_1.quadraticBezierTo(size.width * 0.9622000, size.height * 0.2559375,
        size.width, size.height * 0.3125000);
    path_1.lineTo(size.width, size.height * -0.0012500);
    path_1.lineTo(0, 0);
    path_1.quadraticBezierTo(size.width * 0.0006250, size.height * 0.0467188,
        size.width * 0.0025000, size.height * 0.1868750);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 1 Copy

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
