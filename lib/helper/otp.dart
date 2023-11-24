import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

Widget otpBox({required BuildContext context, required Function onSubmit}) {
  return Pinput(
    length: 6,
    animationCurve: Curves.bounceInOut,
    defaultPinTheme: PinTheme(
      textStyle: AppText.montserrat60016pxbl1B1B1B,
      height: AppSize.heightDivide(context, 13.5593),
      width: AppSize.widthDivide(context, 6.1016),
      decoration: BoxDecoration(
          color: AppColor.wFFFFFF,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            width: 1,
            color: AppColor.gAAAAAA,
          )),
    ),
    onChanged: (value) {
      onSubmit(value);
    },
  );
}
