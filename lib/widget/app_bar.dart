import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBarWidget({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: AppColor.wFFFFFF,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircleAvatar(
            radius: 16,
            backgroundColor: AppColor.b5363DD,
            child: Icon(Icons.arrow_back, color: AppColor.wFFFFFF)),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: AppText.montserrat70020pxpF76A7B,
    ),
  );
}

AppBar userProfileAppBarWidget(BuildContext context, Function call) {
  return AppBar(
    backgroundColor: AppColor.wFFFFFF,
    elevation: 0,
    actions: [
      GestureDetector(
        onTap: () {
          call();
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset('images/activity.svg'),
        ),
      ),
    ],
    centerTitle: true,
    title: Text(
      'Virgin Talks',
      style: AppText.montserrat70020pxpF76A7B,
    ),
  );
}
