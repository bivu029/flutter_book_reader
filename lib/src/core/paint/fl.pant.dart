// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class FlowBgPaintWidget extends StatelessWidget {
  final Widget? child;
  final Size size;
  const FlowBgPaintWidget({super.key, this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6450967, size.height * 0.4596745);
    path_0.cubicTo(
        size.width * 0.6129844,
        size.height * 0.4583437,
        size.width * 0.5654297,
        size.height * 0.4915651,
        size.width * 0.5654297,
        size.height * 0.4915651);
    path_0.cubicTo(
        size.width * 0.5654297,
        size.height * 0.4915651,
        size.width * 0.6131416,
        size.height * 0.5220247,
        size.width * 0.6450967,
        size.height * 0.5207969);
    path_0.cubicTo(
        size.width * 0.6740332,
        size.height * 0.5196862,
        size.width * 0.7167969,
        size.height * 0.4915651,
        size.width * 0.7167969,
        size.height * 0.4915651);
    path_0.cubicTo(
        size.width * 0.7167969,
        size.height * 0.4915651,
        size.width * 0.6742070,
        size.height * 0.4608802,
        size.width * 0.6450967,
        size.height * 0.4596745);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3618936, size.height * 0.4635807);
    path_1.cubicTo(
        size.width * 0.3297813,
        size.height * 0.4622500,
        size.width * 0.2822266,
        size.height * 0.4954714,
        size.width * 0.2822266,
        size.height * 0.4954714);
    path_1.cubicTo(
        size.width * 0.2822266,
        size.height * 0.4954714,
        size.width * 0.3299385,
        size.height * 0.5259310,
        size.width * 0.3618936,
        size.height * 0.5247031);
    path_1.cubicTo(
        size.width * 0.3908301,
        size.height * 0.5235924,
        size.width * 0.4335938,
        size.height * 0.4954714,
        size.width * 0.4335938,
        size.height * 0.4954714);
    path_1.cubicTo(
        size.width * 0.4335938,
        size.height * 0.4954714,
        size.width * 0.3910039,
        size.height * 0.4647865,
        size.width * 0.3618936,
        size.height * 0.4635807);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4765918, size.height * 0.6802357);
    path_2.cubicTo(
        size.width * 0.4755937,
        size.height * 0.7230521,
        size.width * 0.5005098,
        size.height * 0.7864583,
        size.width * 0.5005098,
        size.height * 0.7864583);
    path_2.cubicTo(
        size.width * 0.5005098,
        size.height * 0.7864583,
        size.width * 0.5233545,
        size.height * 0.7228424,
        size.width * 0.5224336,
        size.height * 0.6802357);
    path_2.cubicTo(
        size.width * 0.5216006,
        size.height * 0.6416536,
        size.width * 0.5005098,
        size.height * 0.5846354,
        size.width * 0.5005098,
        size.height * 0.5846354);
    path_2.cubicTo(
        size.width * 0.5005098,
        size.height * 0.5846354,
        size.width * 0.4774961,
        size.height * 0.6414219,
        size.width * 0.4765918,
        size.height * 0.6802357);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4765918, size.height * 0.3091419);
    path_3.cubicTo(
        size.width * 0.4755937,
        size.height * 0.3519583,
        size.width * 0.5005098,
        size.height * 0.4153646,
        size.width * 0.5005098,
        size.height * 0.4153646);
    path_3.cubicTo(
        size.width * 0.5005098,
        size.height * 0.4153646,
        size.width * 0.5233545,
        size.height * 0.3517487,
        size.width * 0.5224336,
        size.height * 0.3091419);
    path_3.cubicTo(
        size.width * 0.5216006,
        size.height * 0.2705599,
        size.width * 0.5005098,
        size.height * 0.2135417,
        size.width * 0.5005098,
        size.height * 0.2135417);
    path_3.cubicTo(
        size.width * 0.5005098,
        size.height * 0.2135417,
        size.width * 0.4774961,
        size.height * 0.2703281,
        size.width * 0.4765918,
        size.height * 0.3091419);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5836973, size.height * 0.3410651);
    path_4.cubicTo(
        size.width * 0.5602852,
        size.height * 0.3703997,
        size.width * 0.5442764,
        size.height * 0.4387253,
        size.width * 0.5442764,
        size.height * 0.4387253);
    path_4.cubicTo(
        size.width * 0.5442764,
        size.height * 0.4387253,
        size.width * 0.5941680,
        size.height * 0.4152799,
        size.width * 0.6161123,
        size.height * 0.3842852);
    path_4.cubicTo(
        size.width * 0.6359844,
        size.height * 0.3562174,
        size.width * 0.6513096,
        size.height * 0.2960143,
        size.width * 0.6513096,
        size.height * 0.2960143);
    path_4.cubicTo(
        size.width * 0.6513096,
        size.height * 0.2960143,
        size.width * 0.6049219,
        size.height * 0.3144714,
        size.width * 0.5836973,
        size.height * 0.3410651);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3874082, size.height * 0.6092943);
    path_5.cubicTo(
        size.width * 0.3639961,
        size.height * 0.6386289,
        size.width * 0.3479873,
        size.height * 0.7069544,
        size.width * 0.3479873,
        size.height * 0.7069544);
    path_5.cubicTo(
        size.width * 0.3479873,
        size.height * 0.7069544,
        size.width * 0.3978789,
        size.height * 0.6835091,
        size.width * 0.4198232,
        size.height * 0.6525143);
    path_5.cubicTo(
        size.width * 0.4396953,
        size.height * 0.6244466,
        size.width * 0.4550205,
        size.height * 0.5642435,
        size.width * 0.4550205,
        size.height * 0.5642435);
    path_5.cubicTo(
        size.width * 0.4550205,
        size.height * 0.5642435,
        size.width * 0.4086328,
        size.height * 0.5827005,
        size.width * 0.3874082,
        size.height * 0.6092943);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3866582, size.height * 0.3907930);
    path_6.cubicTo(
        size.width * 0.4086592,
        size.height * 0.4220104,
        size.width * 0.4599033,
        size.height * 0.4433542,
        size.width * 0.4599033,
        size.height * 0.4433542);
    path_6.cubicTo(
        size.width * 0.4599033,
        size.height * 0.4433542,
        size.width * 0.4423193,
        size.height * 0.3768320,
        size.width * 0.4190732,
        size.height * 0.3475729);
    path_6.cubicTo(
        size.width * 0.3980225,
        size.height * 0.3210768,
        size.width * 0.3528701,
        size.height * 0.3006445,
        size.width * 0.3528701,
        size.height * 0.3006445);
    path_6.cubicTo(
        size.width * 0.3528701,
        size.height * 0.3006445,
        size.width * 0.3667129,
        size.height * 0.3624948,
        size.width * 0.3866582,
        size.height * 0.3907930);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5790410, size.height * 0.6460013);
    path_7.cubicTo(
        size.width * 0.6010420,
        size.height * 0.6772188,
        size.width * 0.6522861,
        size.height * 0.6985625,
        size.width * 0.6522861,
        size.height * 0.6985625);
    path_7.cubicTo(
        size.width * 0.6522861,
        size.height * 0.6985625,
        size.width * 0.6347021,
        size.height * 0.6320404,
        size.width * 0.6114561,
        size.height * 0.6027812);
    path_7.cubicTo(
        size.width * 0.5904053,
        size.height * 0.5762852,
        size.width * 0.5452529,
        size.height * 0.5558529,
        size.width * 0.5452529,
        size.height * 0.5558529);
    path_7.cubicTo(
        size.width * 0.5452529,
        size.height * 0.5558529,
        size.width * 0.5590957,
        size.height * 0.6177031,
        size.width * 0.5790410,
        size.height * 0.6460013);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5334443, size.height * 0.3122969);
    path_8.cubicTo(
        size.width * 0.5202334,
        size.height * 0.3513451,
        size.width * 0.5250537,
        size.height * 0.4226367,
        size.width * 0.5250537,
        size.height * 0.4226367);
    path_8.cubicTo(
        size.width * 0.5250537,
        size.height * 0.4226367,
        size.width * 0.5644180,
        size.height * 0.3755195,
        size.width * 0.5757969,
        size.height * 0.3356875);
    path_8.cubicTo(
        size.width * 0.5860996,
        size.height * 0.2996172,
        size.width * 0.5829795,
        size.height * 0.2361771,
        size.width * 0.5829795,
        size.height * 0.2361771);
    path_8.cubicTo(
        size.width * 0.5829795,
        size.height * 0.2361771,
        size.width * 0.5454199,
        size.height * 0.2768984,
        size.width * 0.5334443,
        size.height * 0.3122969);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4269990, size.height * 0.6534427);
    path_9.cubicTo(
        size.width * 0.4137881,
        size.height * 0.6924909,
        size.width * 0.4186084,
        size.height * 0.7637826,
        size.width * 0.4186084,
        size.height * 0.7637826);
    path_9.cubicTo(
        size.width * 0.4186084,
        size.height * 0.7637826,
        size.width * 0.4579727,
        size.height * 0.7166654,
        size.width * 0.4693516,
        size.height * 0.6768333);
    path_9.cubicTo(
        size.width * 0.4796543,
        size.height * 0.6407630,
        size.width * 0.4765342,
        size.height * 0.5773229,
        size.width * 0.4765342,
        size.height * 0.5773229);
    path_9.cubicTo(
        size.width * 0.4765342,
        size.height * 0.5773229,
        size.width * 0.4389746,
        size.height * 0.6180443,
        size.width * 0.4269990,
        size.height * 0.6534427);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4693496, size.height * 0.3221107);
    path_10.cubicTo(
        size.width * 0.4579824,
        size.height * 0.2820430,
        size.width * 0.4167646,
        size.height * 0.2361771,
        size.width * 0.4167646,
        size.height * 0.2361771);
    path_10.cubicTo(
        size.width * 0.4167646,
        size.height * 0.2361771,
        size.width * 0.4139180,
        size.height * 0.3066068,
        size.width * 0.4269971,
        size.height * 0.3455013);
    path_10.cubicTo(
        size.width * 0.4388398,
        size.height * 0.3807201,
        size.width * 0.4746904,
        size.height * 0.4226367,
        size.width * 0.4746904,
        size.height * 0.4226367);
    path_10.cubicTo(
        size.width * 0.4746904,
        size.height * 0.4226367,
        size.width * 0.4796533,
        size.height * 0.3584310,
        size.width * 0.4693496,
        size.height * 0.3221107);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5757949, size.height * 0.6632565);
    path_11.cubicTo(
        size.width * 0.5644277,
        size.height * 0.6231888,
        size.width * 0.5232100,
        size.height * 0.5773229,
        size.width * 0.5232100,
        size.height * 0.5773229);
    path_11.cubicTo(
        size.width * 0.5232100,
        size.height * 0.5773229,
        size.width * 0.5203633,
        size.height * 0.6477526,
        size.width * 0.5334424,
        size.height * 0.6866471);
    path_11.cubicTo(
        size.width * 0.5452852,
        size.height * 0.7218659,
        size.width * 0.5811357,
        size.height * 0.7637826,
        size.width * 0.5811357,
        size.height * 0.7637826);
    path_11.cubicTo(
        size.width * 0.5811357,
        size.height * 0.7637826,
        size.width * 0.5860986,
        size.height * 0.6995768,
        size.width * 0.5757949,
        size.height * 0.6632565);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.6263486, size.height * 0.3933919);
    path_12.cubicTo(
        size.width * 0.5962979,
        size.height * 0.4085469,
        size.width * 0.5618984,
        size.height * 0.4635039,
        size.width * 0.5618984,
        size.height * 0.4635039);
    path_12.cubicTo(
        size.width * 0.5618984,
        size.height * 0.4635039,
        size.width * 0.6147207,
        size.height * 0.4672995,
        size.width * 0.6438916,
        size.height * 0.4498620);
    path_12.cubicTo(
        size.width * 0.6703057,
        size.height * 0.4340703,
        size.width * 0.7017432,
        size.height * 0.3862695,
        size.width * 0.7017432,
        size.height * 0.3862695);
    path_12.cubicTo(
        size.width * 0.7017432,
        size.height * 0.3862695,
        size.width * 0.6535889,
        size.height * 0.3796523,
        size.width * 0.6263486,
        size.height * 0.3933919);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.3626768, size.height * 0.5340169);
    path_13.cubicTo(
        size.width * 0.3326260,
        size.height * 0.5491719,
        size.width * 0.2982266,
        size.height * 0.6041289,
        size.width * 0.2982266,
        size.height * 0.6041289);
    path_13.cubicTo(
        size.width * 0.2982266,
        size.height * 0.6041289,
        size.width * 0.3510488,
        size.height * 0.6079245,
        size.width * 0.3802197,
        size.height * 0.5904870);
    path_13.cubicTo(
        size.width * 0.4066338,
        size.height * 0.5746953,
        size.width * 0.4380713,
        size.height * 0.5268945,
        size.width * 0.4380713,
        size.height * 0.5268945);
    path_13.cubicTo(
        size.width * 0.4380713,
        size.height * 0.5268945,
        size.width * 0.3899170,
        size.height * 0.5202773,
        size.width * 0.3626768,
        size.height * 0.5340169);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.6438906, size.height * 0.5393841);
    path_14.cubicTo(
        size.width * 0.6146045,
        size.height * 0.5217695,
        size.width * 0.5611348,
        size.height * 0.5281966,
        size.width * 0.5611348,
        size.height * 0.5281966);
    path_14.cubicTo(
        size.width * 0.5611348,
        size.height * 0.5281966,
        size.width * 0.5964727,
        size.height * 0.5806823,
        size.width * 0.6263477,
        size.height * 0.5958542);
    path_14.cubicTo(
        size.width * 0.6534004,
        size.height * 0.6095911,
        size.width * 0.7009795,
        size.height * 0.6054310,
        size.width * 0.7009795,
        size.height * 0.6054310);
    path_14.cubicTo(
        size.width * 0.7009795,
        size.height * 0.6054310,
        size.width * 0.6704395,
        size.height * 0.5553516,
        size.width * 0.6438906,
        size.height * 0.5393841);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.3851016, size.height * 0.4000612);
    path_15.cubicTo(
        size.width * 0.3558154,
        size.height * 0.3824466,
        size.width * 0.3023457,
        size.height * 0.3888737,
        size.width * 0.3023457,
        size.height * 0.3888737);
    path_15.cubicTo(
        size.width * 0.3023457,
        size.height * 0.3888737,
        size.width * 0.3376836,
        size.height * 0.4413594,
        size.width * 0.3675586,
        size.height * 0.4565312);
    path_15.cubicTo(
        size.width * 0.3946113,
        size.height * 0.4702682,
        size.width * 0.4421904,
        size.height * 0.4661081,
        size.width * 0.4421904,
        size.height * 0.4661081);
    path_15.cubicTo(
        size.width * 0.4421904,
        size.height * 0.4661081,
        size.width * 0.4116504,
        size.height * 0.4160286,
        size.width * 0.3851016,
        size.height * 0.4000612);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xff62FF97).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4995117, size.height * 0.4993490),
            width: size.width * 0.1376953,
            height: size.height * 0.1809896),
        paint_16_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
