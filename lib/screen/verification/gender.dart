// ignore_for_file: must_be_immutable

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderWidget extends StatefulWidget {
  GenderWidget({super.key, required this.gender, required this.controller});
  String gender;
  final PageController controller;

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String? genderValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: SizedBox(
        child: Stack(
          children: [
            Positioned(
                bottom: AppSize.heightMultiply(context, 0),
                child: SizedBox(
                    width: AppSize.widthMultiply(context, 1),
                    child: SvgPicture.asset("images/gender.svg"))),
            Positioned(
              top: AppSize.heightDivide(context, 5),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.widthDivide(context, 15)),
                width: AppSize.widthMultiply(context, 1),
                child: Column(
                  children: [
                    Text(
                      'Ready to get Virgified !',
                      style: AppText.montserrat60025pxpF76A7B,
                    ),
                    SizedMedia.heightDivide(context, 15),
                    Text(
                      "I'm a",
                      style: AppText.montserrat60024pxpF76A7B,
                    ),
                    SizedMedia.heightDivide(context, 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button139(
                            context: context,
                            text: 'Male',
                            call: () {
                              setState(() {
                                genderValue = 'male';
                                widget.gender = genderValue!;
                              });
                              widget.controller.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.bounceIn);
                            }),
                        SizedMedia.widthDivide(context, 20),
                        button139(
                            context: context,
                            text: 'Female',
                            call: () {
                              setState(() {
                                genderValue = 'female';
                                widget.gender = genderValue!;
                              });
                              widget.controller.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.bounceIn);
                            }),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
