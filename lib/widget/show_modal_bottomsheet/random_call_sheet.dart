import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';

Widget randomCallSheet(
    {required BuildContext context, required Function call}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 25)),
    height: AppSize.heightDivide(context, 3.1007),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: AppColor.wFFFFFF),
    child: Column(
      children: [
        SizedMedia.heightDivide(context, 60),
        Container(
          height: AppSize.heightDivide(context, 266.6666),
          width: AppSize.widthDivide(context, 2.6089),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17), color: AppColor.b5363DD),
        ),
        SizedMedia.heightDivide(context, 20),
        SizedBox(
          width: AppSize.widthMultiply(context, 1),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: AppText.montserrat50013pxbl1B1B1B,
            textAlign: TextAlign.center,
          ),
        ),
        SizedMedia.heightDivide(context, 15),
        button262(
            context: context,
            text: 'Wanna see',
            call: () {
              call();
            })
      ],
    ),
  );
}
