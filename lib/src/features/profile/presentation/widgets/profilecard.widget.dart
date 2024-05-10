// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileTile extends StatefulWidget {
  /// list[ IconData icon,  String tilename, bool? istailexist, bool ontapexist,Widget? widget,]
  final List<
      (
        IconData icon,
        String tilename,
        bool? istailexist,
        bool ontapexist,
        Widget? widget,
      )> tileList;
  const ProfileTile({
    Key? key,
    required this.tileList,
  }) : super(key: key);

  @override
  State<ProfileTile> createState() => _ProfileTileState();
}

class _ProfileTileState extends State<ProfileTile> {
  bool switchvalue = false;
  // List<
  //     (
  //       IconData icon,
  //       String tilename,
  //       bool? istailexist,
  //       bool ontapexist,
  //       Widget? widget,
  //     )> tileList = [

  // ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: widget.tileList.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: widget.tileList[index].$4 == true ? () {} : null,
          leading: Icon(widget.tileList[index].$1),
          title: Text(widget.tileList[index].$2),
          trailing: widget.tileList[index].$3 != null &&
                  widget.tileList[index].$3 != false
              ? Switch(
                  value: switchvalue,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                  
                    setState(() {
                      switchvalue = value;
                    });
                  })
              : const SizedBox(),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
