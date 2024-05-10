import 'package:bookbazar/src/features/library/presentation/widgets/bookcard.widget.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Faovorite",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
           BookCardWidget()
          ],
        ),
      ),
    );
  }
}