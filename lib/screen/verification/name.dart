// ignore_for_file: must_be_immutable

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NameWidget extends StatefulWidget {
  NameWidget({
    super.key,
    required this.name,
    required this.controller,
  });
  String name;
  final PageController controller;

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  TextEditingController name = TextEditingController();
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
                      child: SvgPicture.asset("images/name.svg"))),
              Positioned(
                top: AppSize.heightDivide(context, 5),
                child: SizedBox(
                  width: AppSize.widthMultiply(context, 1),
                  child: Column(
                    children: [
                      Text(
                        "My Name is",
                        style: AppText.montserrat60024pxpF76A7B,
                      ),
                      SizedMedia.heightDivide(context, 40),
                      nameTextFormField(
                          context: context, controller: name, hintText: 'Name'),
                      button316(
                          context: context,
                          text: 'Continue',
                          call: () {
                            setState(() {
                              widget.name = name.text;
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
