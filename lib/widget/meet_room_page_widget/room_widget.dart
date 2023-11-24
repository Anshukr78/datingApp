// ignore_for_file: deprecated_member_use

import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget roomWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: AppSize.heightDivide(context, 80),
      horizontal: AppSize.widthDivide(context, 30),
    ),
    padding: EdgeInsets.symmetric(
        vertical: AppSize.heightDivide(context, 60),
        horizontal: AppSize.widthDivide(context, 20)),
    height: AppSize.heightDivide(context, 4.4198),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
        // border: Border.all(width: 2, color: AppColor.gA6ABBDw32),
        borderRadius: BorderRadius.circular(21),
        color: AppColor.wFFFFFF,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 2,
              color: AppColor.bl000000w16)
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Room Title Name',
          style: AppText.montserrat70015pxbl1B1B1B,
        ),
        Row(
          children: [
            SizedBox(
              height: AppSize.heightDivide(context, 5.9259),
              width: AppSize.widthMultiply(context, 0.35),
              child: Stack(
                children: [
                  Positioned(
                    top: AppSize.heightDivide(context, 40),
                    left: AppSize.widthMultiply(context, 0),
                    child: profileWidget(
                        context: context, height: 12.9032, width: 5.8064),
                  ),
                  Positioned(
                    top: AppSize.heightDivide(context, 14),
                    left: AppSize.widthDivide(context, 15),
                    child: profileWidget(
                        context: context, height: 12.9032, width: 5.8064),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppSize.heightDivide(context, 50),
              ),
              height: AppSize.heightDivide(context, 5.9259),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Valerie Elash',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 36),
                      SvgPicture.asset('images/msgO.svg')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Valerie',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 36),
                      SvgPicture.asset('images/msgO.svg')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Olivia',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 36),
                      SvgPicture.asset('images/msgO.svg')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '115',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 60),
                      SvgPicture.asset(
                        'images/profile.svg',
                        height: AppSize.heightDivide(context, 57.1428),
                        width: AppSize.widthDivide(context, 25.7142),
                        color: AppColor.pF76A7B,
                      ),
                      SizedMedia.widthDivide(context, 60),
                      Text(
                        '/',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 60),
                      Text(
                        '25',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 60),
                      SvgPicture.asset(
                        'images/msgF.svg',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
