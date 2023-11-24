// ignore_for_file: must_be_immutable

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';

class InterestsWidget extends StatefulWidget {
  InterestsWidget(
      {super.key, required this.interest, required this.controller});
  List interest;
  final PageController controller;

  @override
  State<InterestsWidget> createState() => _InterestsWidgetState();
}

class _InterestsWidgetState extends State<InterestsWidget> {
  List interestList = [
    'Pet Lover',
    'Travel',
    'Reading',
  ];

  List selectedInterest = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: Padding(
        padding: EdgeInsets.only(top: AppSize.heightDivide(context, 10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "My Interests",
                style: AppText.montserrat60024pxpF76A7B,
              ),
              SizedMedia.heightDivide(context, 20),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: AppSize.heightDivide(context, 60),
                  horizontal: AppSize.widthDivide(context, 20),
                ),
                height: AppSize.heightMultiply(context, 1),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 98 / 26,
                    ),
                    itemCount: interestList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (selectedInterest.contains(interestList[index])) {
                            setState(() {
                              selectedInterest.remove(interestList[index]);
                            });
                          } else {
                            setState(() {
                              selectedInterest.add(interestList[index]);
                            });
                          }
                        },
                        child: Container(
                          height: AppSize.heightDivide(context, 30.7692),
                          width: AppSize.widthDivide(context, 3.6734),
                          decoration:
                              selectedInterest.contains(interestList[index])
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: LinearGradient(
                                          colors: [
                                            AppColor.pF76A7B,
                                            AppColor.b5363DD
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: AppColor.gDEDEDE,
                                    ),
                          child: Center(
                            child: Text(
                              interestList[index],
                              style:
                                  selectedInterest.contains(interestList[index])
                                      ? AppText.montserrat60012pxwFFFFFF
                                      : AppText.montserrat60012pxbl1B1B1B,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: AppSize.heightDivide(context, 8),
        width: AppSize.widthMultiply(context, 1),
        color: AppColor.wFFFFFF,
        child: Center(
            child: button316(
                context: context,
                text: 'Continue',
                call: () {
                  setState(() {
                    widget.interest = selectedInterest;
                  });
                  widget.controller.nextPage(
                      duration: const Duration(microseconds: 500),
                      curve: Curves.bounceIn);
                })),
      ),
    );
  }
}
