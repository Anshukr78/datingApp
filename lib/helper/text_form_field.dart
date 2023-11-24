import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/authentication/otp_verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget signInTextFormField(
    {required BuildContext context,
    required TextEditingController controller,
    required String hintText}) {
  return Container(
    height: AppSize.heightDivide(context, 18.1818),
    width: AppSize.widthDivide(context, 1.6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
    ),
    child: TextFormField(
      onChanged: (value) {
        if (value.length == 10) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OtpVerify(
                        number: controller.text.trim(), verifyId: '',
                      )));
        }
      },
      style: AppText.montserrat50015pxbl1B1B1B,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 150),
            horizontal: AppSize.widthDivide(context, 36)),
        filled: true,
        fillColor: AppColor.wFFFFFF,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(width: 1, color: AppColor.gAAAAAA)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(width: 1, color: AppColor.gAAAAAA)),
        hintText: hintText,
        hintStyle: AppText.montserrat50015pxgAAAAAA,
      ),
    ),
  );
}

Widget nameTextFormField(
    {required BuildContext context,
    required TextEditingController controller,
    required String hintText}) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: AppSize.widthDivide(context, 12),
        vertical: AppSize.heightDivide(context, 60)),
    height: AppSize.heightDivide(context, 16.6666),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18.5),
    ),
    child: TextFormField(
      style: AppText.montserrat60017pxbl1B1B1B,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 150),
            horizontal: AppSize.widthDivide(context, 25)),
        filled: true,
        fillColor: AppColor.wFFFFFF,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.5),
            borderSide: BorderSide(width: 1, color: AppColor.gD4D4D4)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.5),
            borderSide: BorderSide(width: 1, color: AppColor.gD4D4D4)),
        hintText: hintText,
        hintStyle: AppText.montserrat60017pxbl1B1B1B,
      ),
    ),
  );
}

Widget birthdayTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  required String hintText,
  required double width,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: AppSize.heightDivide(context, 60)),
    height: AppSize.heightDivide(context, 16.6666),
    width: AppSize.widthDivide(context, width),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18.5),
    ),
    child: TextFormField(
      style: AppText.montserrat60017pxbl1B1B1B,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 150),
            horizontal: AppSize.widthDivide(context, 12)),
        filled: true,
        fillColor: AppColor.wFFFFFF,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.5),
            borderSide: BorderSide(width: 1, color: AppColor.gD4D4D4)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.5),
            borderSide: BorderSide(width: 1, color: AppColor.gD4D4D4)),
        hintText: hintText,
        hintStyle: AppText.montserrat60017pxgAAAAAA,
      ),
    ),
  );
}

Widget locationTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  required Function call,
}) {
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: AppSize.heightDivide(context, 60),
        horizontal: AppSize.widthDivide(context, 12)),
    height: AppSize.heightDivide(context, 20.5128),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
    ),
    child: TextFormField(
      onTap: () {
        call();
      },
      // enabled: false,
      style: AppText.montserrat50013pxbl1B1B1B,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: AppSize.heightDivide(context, 150),
              horizontal: AppSize.widthDivide(context, 12)),
          filled: true,
          fillColor: AppColor.wFFFFFF,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(width: 1, color: AppColor.gC4C4C4)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide(width: 1, color: AppColor.gC4C4C4)),
          hintText: 'Location',
          hintStyle: AppText.montserrat50013pxbl1B1B1B,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset('images/dashLocation.svg'),
          )),
    ),
  );
}

Widget heightTextFormField({
  required BuildContext context,
  required TextEditingController controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedMedia.heightDivide(context, 40),
      Text(
        'Height',
        style: AppText.montserrat60013pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 100),
      Container(
        height: AppSize.heightDivide(context, 19.5121),
        width: AppSize.widthDivide(context, 2.25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: AppColor.wFFFFFF,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                  color: AppColor.bl000000w19)
            ]),
        child: TextFormField(
          style: AppText.montserrat60012pxbl1B1B1B,
          controller: controller,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: AppSize.heightDivide(context, 150),
                horizontal: AppSize.widthDivide(context, 30)),
            filled: true,
            fillColor: AppColor.wFFFFFF,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(width: 1, color: AppColor.wFFFFFF)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(width: 1, color: AppColor.wFFFFFF)),
            hintText: 'None',
            hintStyle: AppText.montserrat60012pxbl1B1B1B,
          ),
        ),
      ),
    ],
  );
}

Widget roomTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  // required String hintText
}) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: AppSize.widthDivide(context, 20),
        vertical: AppSize.heightDivide(context, 60)),
    height: AppSize.heightDivide(context, 18.1818),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
    ),
    child: TextFormField(
      style: AppText.montserrat60012pxbl1B1B1B,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 150),
            horizontal: AppSize.widthDivide(context, 25)),
        filled: true,
        fillColor: AppColor.wFFFFFF,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(width: 1, color: AppColor.g787878)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(width: 1, color: AppColor.g787878)),
        hintText: 'Title Name.....',
        hintStyle: AppText.montserrat60012pxg787878,
      ),
    ),
  );
}
