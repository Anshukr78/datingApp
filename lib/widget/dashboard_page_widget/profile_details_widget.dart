// ignore_for_file: deprecated_member_use

import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/dashboard/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget profileDetailsWidget(BuildContext context, String image) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Valerie Elash',
                style: AppText.montserrat70015pxbl1B1B1B,
              ),
              SizedMedia.widthDivide(context, 36),
              SvgPicture.asset(image),
            ],
          ),
          Container(
            height: AppSize.heightDivide(context, 36.3636),
            width: AppSize.widthDivide(context, 5.9016),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: AppColor.wF2F2F2),
            child: Center(
              child: Text(
                '30 Mi',
                style: AppText.montserrat60012pxbl1B1B1B,
              ),
            ),
          )
        ],
      ),
      Text(
        '24 years',
        style: AppText.montserrat70009pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedMedia.widthDivide(context, 220),
          SvgPicture.asset(
            'images/dashLocation.svg',
            height: AppSize.heightDivide(context, 53.333),
            width: AppSize.widthDivide(context, 24),
            // ignore: deprecated_member_use
            color: AppColor.bl1B1B1B,
          ),
          SizedMedia.widthDivide(context, 36),
          Text(
            'City Name',
            style: AppText.montserrat50012pxbl1B1B1B,
          ),
        ],
      ),
      SizedMedia.heightDivide(context, 100),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'images/college.svg',
          ),
          SizedMedia.widthDivide(context, 36),
          Text(
            'College Name',
            style: AppText.montserrat50012pxbl1B1B1B,
          ),
        ],
      ),
      SizedMedia.heightDivide(context, 100),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedMedia.widthDivide(context, 100),
          SvgPicture.asset(
            'images/designer.svg',
          ),
          SizedMedia.widthDivide(context, 36),
          Text(
            'Ui Designer',
            style: AppText.montserrat50012pxbl1B1B1B,
          ),
        ],
      ),
    ],
  );
}

Widget dashboardAboutWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'About',
        style: AppText.montserrat60013pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 100),
      SizedBox(
        width: AppSize.widthMultiply(context, 1),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing.',
          style: AppText.montserrat50012pxbl1B1B1B,
        ),
      ),
    ],
  );
}

Widget profileDetailWidget(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: AppSize.widthDivide(context, 25),
        vertical: AppSize.heightDivide(context, 80)),
    height: AppSize.heightDivide(context, 7.0796),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(21),
          bottomRight: Radius.circular(21),
        ),
        color: AppColor.wFFFFFFw40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Valerie Elash',
                  style: AppText.montserrat70015pxwFFFFFF,
                ),
                SizedMedia.widthDivide(context, 36),
                SvgPicture.asset(
                  'images/verifyB.svg',
                  color: AppColor.wFFFFFF,
                ),
              ],
            ),
            Text(
              '24 years',
              style: AppText.montserrat70009pxwFFFFFF,
            ),
            SizedMedia.heightDivide(context, 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedMedia.widthDivide(context, 220),
                SvgPicture.asset(
                  'images/dashLocation.svg',
                  height: AppSize.heightDivide(context, 53.333),
                  width: AppSize.widthDivide(context, 24),
                  color: AppColor.wFFFFFF,
                ),
                SizedMedia.widthDivide(context, 36),
                Text(
                  'City Name',
                  style: AppText.montserrat50012pxwFFFFFF,
                ),
              ],
            ),
            SizedMedia.heightDivide(context, 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'images/college.svg',
                  color: AppColor.wFFFFFF,
                ),
                SizedMedia.widthDivide(context, 36),
                Text(
                  'College Name',
                  style: AppText.montserrat50012pxwFFFFFF,
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '30 Mi',
              style: AppText.montserrat60012pxwFFFFFF,
            ),
            SizedMedia.widthDivide(context, 3),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashProfile()));
              },
              child: SvgPicture.asset('images/info.svg'),
            )
          ],
        )
      ],
    ),
  );
}
