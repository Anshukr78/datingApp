import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';

class MyProfileSlider extends StatefulWidget {
  const MyProfileSlider({super.key});

  @override
  State<MyProfileSlider> createState() => _MyProfileSliderState();
}

class _MyProfileSliderState extends State<MyProfileSlider> {
  List imageSliderList = [
    'images/image.avif',
    'images/splash.avif',
    'images/image.avif',
    'images/splash.avif',
    'images/image.avif',
  ];
  CarouselController buttonController = CarouselController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSize.widthDivide(context, 36),
        vertical: AppSize.heightDivide(context, 60),
      ),
      height: AppSize.heightDivide(context, 2.0671),
      width: AppSize.widthMultiply(context, 1),
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: buttonController,
            items: List.generate(imageSliderList.length, (index) {
              return Container(
                height: AppSize.heightDivide(context, 2.0671),
                width: AppSize.widthMultiply(context, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                      image: AssetImage(imageSliderList[index]),
                      fit: BoxFit.cover,
                    )),
              );
            }),
            options: CarouselOptions(
                height: AppSize.heightDivide(context, 2.0671),
                viewportFraction: 1,
                onPageChanged: (value, _) {
                  setState(() {
                    pageIndex = value;
                  });
                }),
          ),
          Positioned(
            bottom: AppSize.heightDivide(context, 30),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 20)),
              width: AppSize.widthMultiply(context, 1),
              child: Center(
                child: CarouselIndicator(
                  height: AppSize.heightDivide(context, 200),
                  width: AppSize.widthDivide(
                      context, 2.7480 * imageSliderList.length),
                  count: imageSliderList.length,
                  index: pageIndex,
                  color: AppColor.wFFFFFF,
                  activeColor: AppColor.pE2535F,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
