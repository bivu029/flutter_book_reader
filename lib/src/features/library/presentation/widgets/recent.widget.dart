import 'package:bookbazar/src/features/library/presentation/widgets/bookcard.widget.dart';
import 'package:flutter/material.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Currently Reading",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
           BookCardWidget()
          ],
        ),
      ),
    );
  }
}
