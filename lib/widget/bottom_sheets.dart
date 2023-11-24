// ignore_for_file: deprecated_member_use

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget completeProfileBottomSheet(BuildContext context, Function call) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 20)),
    height: AppSize.heightDivide(context, 8.8888),
    width: AppSize.widthMultiply(context, 1),
    color: AppColor.wFFFFFF,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedMedia.heightDivide(context, 80),
      InkWell(
        onTap: () {
          call();
        },
        child: CircleAvatar(
            radius: 19,
            backgroundColor: AppColor.b5363DD,
            child: Icon(Icons.arrow_forward, color: AppColor.wFFFFFF)),
      )
    ]),
  );
}

class CreateRoomBottomSheet extends StatefulWidget {
  const CreateRoomBottomSheet({super.key});

  @override
  State<CreateRoomBottomSheet> createState() => _CreateRoomBottomSheetState();
}

class _CreateRoomBottomSheetState extends State<CreateRoomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 25)),
      height: AppSize.heightDivide(context, 8.8888),
      width: AppSize.widthMultiply(context, 1),
      color: AppColor.wFFFFFF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          button224(context: context, text: 'Close Room', call: () {}),
          InkWell(
            onTap: () {},
            child: Container(
              height: AppSize.heightDivide(context, 18.6046),
              width: AppSize.widthDivide(context, 8.3720),
              decoration: BoxDecoration(
                  color: AppColor.wFFFFFF,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColor.gE8E8E8w32),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 7,
                        color: AppColor.gA6ABBDw32)
                  ]),
              child: Center(
                child: SvgPicture.asset(
                  'images/microphone.svg',
                  height: AppSize.heightDivide(context, 33.3333),
                  width: AppSize.widthDivide(context, 15),
                  color: AppColor.yF67C0B,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: AppSize.heightDivide(context, 18.6046),
              width: AppSize.widthDivide(context, 8.3720),
              decoration: BoxDecoration(
                  color: AppColor.wFFFFFF,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColor.gE8E8E8w32),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 7,
                        color: AppColor.gA6ABBDw32)
                  ]),
              child: Center(
                child: SvgPicture.asset(
                  'images/hand.svg',
                  height: AppSize.heightDivide(context, 33.3333),
                  width: AppSize.widthDivide(context, 17.1428),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
