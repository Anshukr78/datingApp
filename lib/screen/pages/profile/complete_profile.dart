import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/drinking.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/language.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/reason.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/religion.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/smoking.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/virginity.dart';
import 'package:datingapp/screen/pages/profile/complete_profile_pages/zodiac.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  PageController pageController = PageController();
  int index = 0;
  String drinking = '';
  String smoking = '';
  String virginity = '';
  String zodiac = '';
  String religion = '';
  String language = '';
  String reason = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppSize.heightMultiply(context, 1),
          width: AppSize.widthMultiply(context, 1),
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            children: [
              DrinkingPage(
                controller: pageController,
                drinking: drinking,
              ),
              SmokingPage(
                controller: pageController,
                smoking: smoking,
              ),
              VirginityPage(
                controller: pageController,
                virginity: virginity,
              ),
              ZodiacPage(
                controller: pageController,
                zodiac: zodiac,
              ),
              ReligionPage(
                controller: pageController,
                religion: religion,
              ),
              LanguagePage(
                controller: pageController,
                language: language,
              ),
              ReasonPage(
                controller: pageController,
                reason: reason,
              )
            ],
          ),
        ),
        Positioned(
            bottom: AppSize.heightDivide(context, 20),
            // left: AppSize.widthDivide(context, 2.5),
            // right: AppSize.widthDivide(context, 2.5),
            child: SizedBox(
              width: AppSize.widthMultiply(context, 1),
              child: Center(
                child: CarouselIndicator(
                  count: 7,
                  index: index,
                  height: AppSize.heightDivide(context, 88.8888),
                  width: AppSize.widthDivide(context, 40),
                  color: AppColor.gD4D4D4,
                  activeColor: AppColor.pF76A7B,
                ),
              ),
            )),
      ],
    );
  }
}
