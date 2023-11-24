import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/verification/verification.dart';
import 'package:flutter/material.dart';

Widget otpVerifySheet(
    {required BuildContext context,
    required Function call,
      required String text,
    required String number}) {
  return Container(
    height: AppSize.heightDivide(context, 3.3333),
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
        Text(
          'OTP Verification',
          style: AppText.montserrat60019pxbl1B1B1B,
        ),
        SizedMedia.heightDivide(context, 80),
        Text(
          text,
          style: AppText.montserrat60028pxpF76A7B,
        ),
        SizedMedia.heightDivide(context, 30),
        button143(
            context: context,
            text: 'Continue',
            call: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Verification(
                            number: number,
                          )));
            })
      ],
    ),
  );
}
