// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TabbarItemWidget extends StatelessWidget {
  final String title;
  const TabbarItemWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
