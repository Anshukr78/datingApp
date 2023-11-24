// ignore_for_file: constant_identifier_names, must_be_immutable

import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/bottom_sheets.dart';
import 'package:datingapp/widget/list_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Radio1 { Yes, No }

class ReasonPage extends StatefulWidget {
  ReasonPage({super.key, required this.reason, required this.controller});
  String reason;
  final PageController controller;

  @override
  State<ReasonPage> createState() => _ReasonPageState();
}

class _ReasonPageState extends State<ReasonPage> {
  Radio1 radioValue = Radio1.Yes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.wFFFFFF,
        appBar: appBarWidget(context: context, title: ''),
        body: Column(children: [
          Container(
            width: AppSize.widthMultiply(context, 1),
            margin: EdgeInsets.symmetric(
                vertical: AppSize.heightDivide(context, 40)),
            child: SvgPicture.asset('images/complete_profile.svg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSize.widthDivide(context, 25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Why are your here ?',
                  style: AppText.montserrat60018pxbl212121,
                ),
                SizedMedia.heightDivide(context, 60),
                radioListTile(
                    context: context,
                    title: 'To make new friends',
                    value: Radio1.Yes,
                    groupValue: radioValue,
                    call: (save) {
                      setState(() {
                        radioValue = save;
                      });
                    }),
                radioListTile(
                    context: context,
                    title: 'no',
                    value: Radio1.No,
                    groupValue: radioValue,
                    call: (save) {
                      setState(() {
                        radioValue = save;
                      });
                    }),
              ],
            ),
          )
        ]),
        bottomSheet: completeProfileBottomSheet(context, () {
          setState(() {
            widget.reason = radioValue.toString();
          });
          widget.controller.nextPage(
              duration: const Duration(microseconds: 500),
              curve: Curves.bounceIn);
        }));
  }
}
