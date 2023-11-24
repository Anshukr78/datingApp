import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';

Container containerWidget(
    {required BuildContext context,
    required double width,
    required String title,
    required String subtitle}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: AppSize.heightDivide(context, 150)),
    padding: EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 30)),
    height: AppSize.heightDivide(context, 24.2424),
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(width: 1, color: AppColor.gD4D4D4)),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: AppText.montserrat50011pxbl1B1B1B,
          ),
          Text(
            subtitle,
            style: AppText.montserrat60011pxbl1B1B1B,
          ),
        ],
      ),
    ),
  );
}
