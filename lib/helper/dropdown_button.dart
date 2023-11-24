import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

Widget signInDropdownButtonWidget(
    {required BuildContext context,
    required var value,
    required Function onChanged,
    required List<DropdownMenuItem> item}) {
  return Container(
      height: AppSize.heightDivide(context, 18.1818),
      width: AppSize.widthDivide(context, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        // border: Border.all(width: 1, color: AppColor.gEDEDED)
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField2(
            dropdownWidth: AppSize.widthDivide(context, 5),
            buttonHeight: AppSize.heightDivide(context, 18.1818),
            buttonWidth: AppSize.widthDivide(context, 5),
            items: item,
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.symmetric(
                  vertical: AppSize.heightDivide(context, 150),
                  horizontal: AppSize.widthDivide(context, 36)),
              filled: true,
              fillColor: AppColor.wFFFFFF,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.gAAAAAA,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.gAAAAAA,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.gAAAAAA,
                ),
              ),
            ),
            value: value,
            onChanged: (value) {
              onChanged(value);
            },
          ),
        ),
      ));
}

Widget profileDropdownButtonWidget(
    {required BuildContext context,
    required String title,
    required String hintText,
    required double width,
    required double dropdownWidth,
    required var value,
    required Function onChanged,
    required List<DropdownMenuItem> item}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedMedia.heightDivide(context, 40),
      Text(
        title,
        style: AppText.montserrat60013pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 100),
      Container(
          height: AppSize.heightDivide(context, 19.5121),
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColor.wFFFFFF,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    color: AppColor.bl000000w19)
              ]),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField2(
                dropdownWidth: dropdownWidth,
                buttonHeight: AppSize.heightDivide(context, 19.5121),
                buttonWidth: width,
                items: item,
                hint: Text(
                  hintText,
                  style: AppText.montserrat60012pxbl1B1B1B,
                ),
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.zero,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: AppSize.heightDivide(context, 150),
                      horizontal: AppSize.widthDivide(context, 30)),
                  filled: true,
                  fillColor: AppColor.wFFFFFF,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.wFFFFFF,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.wFFFFFF,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.wFFFFFF,
                    ),
                  ),
                ),
                value: value,
                onChanged: (value) {
                  onChanged(value);
                },
              ),
            ),
          )),
    ],
  );
}

Widget activityDropdownButtonWidget(
    {required BuildContext context,
    required var value,
    required Function onChanged,
    required List<DropdownMenuItem> item}) {
  return Container(
    width: AppSize.widthDivide(context, 4.0449),
    height: AppSize.heightDivide(context, 22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColor.wFFFFFF,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 3,
              color: AppColor.bl000000w16)
        ]),
    child: DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        dropdownWidth: AppSize.widthDivide(context, 4.5),
        buttonHeight: AppSize.heightDivide(context, 22),
        buttonWidth: AppSize.widthDivide(context, 4.0449),
        items: item,
        iconEnabledColor: AppColor.b5363DD,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: AppSize.widthDivide(context, 30)),
          filled: true,
          fillColor: AppColor.wFFFFFF,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 1,
              color: AppColor.wFFFFFF,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 1,
              color: AppColor.wFFFFFF,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 1,
              color: AppColor.wFFFFFF,
            ),
          ),
        ),
        value: value,
        onChanged: (value) {
          onChanged(value);
        },
      ),
    ),
  );
}
