// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchCustomPAint extends StatelessWidget {
    final Size size;
  const SearchCustomPAint({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}
class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(162, 109, 242, 157)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(0,size.height*-0.0019250);
    path_0.lineTo(size.width*1.0025000,size.height*-0.0019250);
    path_0.lineTo(size.width*1.0050000,size.height*0.5068625);
    path_0.quadraticBezierTo(size.width*0.9611250,size.height*0.4615500,size.width*0.8772000,size.height*0.4671500);
    path_0.quadraticBezierTo(size.width*0.7832000,size.height*0.4662250,size.width*0.5012500,size.height*0.4634125);
    path_0.quadraticBezierTo(size.width*0.2399750,size.height*0.4601500,size.width*0.1228000,size.height*0.4634125);
    path_0.quadraticBezierTo(size.width*0.0363500,size.height*0.4592125,size.width*0.0025000,size.height*0.5075000);
    path_0.lineTo(0,size.height*-0.0019250);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);
  

  // Layer 1
  
  Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paintStroke0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
