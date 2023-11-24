import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget userProfileWidget(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: AppSize.heightDivide(context, 20)),
    child: Column(
      children: [
        profileWidget(context: context, height: 8.6956, width: 3.9130),
        SizedMedia.heightDivide(context, 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedMedia.widthDivide(context, 12),
            Text(
              'Valerie Elash',
              style: AppText.montserrat70014pxbl1B1B1B,
            ),
            SizedMedia.widthDivide(context, 36),
            SvgPicture.asset(
              'images/verify.svg',
              // ignore: deprecated_member_use
              color: AppColor.b5363DD,
            ),
          ],
        ),
        Text(
          '25 Year',
          style: AppText.montserrat60010pxbl1B1B1B,
        ),
      ],
    ),
  );
}
