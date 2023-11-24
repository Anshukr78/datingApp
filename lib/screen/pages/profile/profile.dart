import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/profile/activity.dart';
import 'package:datingapp/screen/pages/profile/complete_profile.dart';
import 'package:datingapp/screen/pages/profile/my_profile.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/profile_page_widget/user_profile_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: userProfileAppBarWidget(context, () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Activity()));
      }),
      body: Column(
        children: [
          userProfileWidget(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button160(
                  context: context,
                  text: 'Complete Your Profile',
                  call: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompleteProfile()));
                  }),
              button160(
                  context: context,
                  text: 'My Profile',
                  call: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyProfile()));
                  }),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: AppSize.heightDivide(context, 20),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.widthDivide(context, 25),
            ),
            height: AppSize.heightDivide(context, 12.6984),
            width: AppSize.widthMultiply(context, 1),
            decoration: BoxDecoration(
                color: AppColor.wFFFFFF,
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: AppColor.gC4C4C4,
                  ),
                  bottom: BorderSide(
                    width: 1,
                    color: AppColor.gC4C4C4,
                  ),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mute Notification',
                  style: AppText.montserrat60015pxbl1B1B1B,
                ),
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                  activeColor: AppColor.b5363DD,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
