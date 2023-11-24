// ignore_for_file: must_be_immutable

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BirthdayWidget extends StatefulWidget {
  BirthdayWidget({super.key, required this.dob, required this.controller});
  String dob;
  final PageController controller;


  @override
  State<BirthdayWidget> createState() => _BirthdayWidgetState();
}

class _BirthdayWidgetState extends State<BirthdayWidget> {
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.heightMultiply(context, 1),
          width: AppSize.widthMultiply(context, 1),
          child: Stack(
            children: [
              Positioned(
                  bottom: AppSize.heightMultiply(context, 0),
                  child: SizedBox(
                      width: AppSize.widthMultiply(context, 1),
                      child: SvgPicture.asset("images/birthday.svg"))),
              Positioned(
                top: AppSize.heightDivide(context, 5),
                child: SizedBox(
                  width: AppSize.widthMultiply(context, 1),
                  child: Column(
                    children: [
                      Text(
                        "My Birthday",
                        style: AppText.montserrat60024pxpF76A7B,
                      ),
                      SizedMedia.heightDivide(context, 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          birthdayTextFormField(
                              context: context,
                              controller: date,
                              hintText: 'DD',
                              width: 3.9130),
                          SizedMedia.widthDivide(context, 60),
                          birthdayTextFormField(
                              context: context,
                              controller: month,
                              hintText: 'MM',
                              width: 3.9130),
                          SizedMedia.widthDivide(context, 60),
                          birthdayTextFormField(
                              context: context,
                              controller: year,
                              hintText: 'YYYY',
                              width: 2.9752),
                        ],
                      ),
                      button316(
                          context: context,
                          text: 'Continue',
                          call: () {
                            setState(() {
                              widget.dob = date.text + month.text + year.text;
                            });
                            widget.controller.nextPage(
                                duration: const Duration(microseconds: 500),
                                curve: Curves.bounceIn);
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
