
import 'package:bookbazar/src/core/paint/profilebg.paint.dart';

import 'package:bookbazar/src/features/profile/presentation/widgets/profilecard.widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                const ProfileBgPaintWidget(size: Size(double.infinity, 550)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, bottom: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[200],
                              radius: 30,
                              child: const CircleAvatar(
                                radius: 27,
                                foregroundImage: NetworkImage(
                                    "https://fastly.picsum.photos/id/1062/200/200.jpg?hmac=F_trr44XLYeth1u5FIqJIgtD4pR7WOlzKZ2xrQ3tzww"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "bkpk",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "tannaa@gmail.com",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 14.0, bottom: 5, top: 16),
                        child: Text(
                          "Account",
                          style: TextStyle(fontSize: 19, color: Colors.black45),
                        ),
                      ),
                      const ProfileTile(
                        tileList: [
                          (
                            Icons.person_outline,
                            "Profile Details",
                            false,
                            true,
                            null
                          ),
                          (
                            Icons.subscriptions_outlined,
                            "Remove Ads",
                            false,
                            true,
                            null
                          ),
                          (
                            Icons.book_online,
                            "Published Book",
                            false,
                            true,
                            null
                          ),
                          (
                            Icons.wb_sunny_outlined,
                            "Appearence",
                            true,
                            false,
                            null
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 14.0, bottom: 5, top: 5),
                        child: Text(
                          "General",
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        ),
                      ),
                      const ProfileTile(tileList: [
                        (Icons.help_outline, "Help", false, true, null),
                        (
                          Icons.policy_outlined,
                          "Privacy Policy",
                          false,
                          true,
                          null
                        ),
                        (
                          Icons.accessibility_new_outlined,
                          "About Us",
                          false,
                          true,
                          null
                        ),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
