import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';

class CallProfileWidget extends StatefulWidget {
  const CallProfileWidget({super.key});

  @override
  State<CallProfileWidget> createState() => _CallProfileWidgetState();
}

class _CallProfileWidgetState extends State<CallProfileWidget> {
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
    return CarouselSlider(
      carouselController: buttonController,
      items: List.generate(imageSliderList.length, (index) {
        return Container(
          margin: EdgeInsets.only(
            top: AppSize.heightDivide(context, 80),
            left: AppSize.widthDivide(context, 36),
            right: AppSize.widthDivide(context, 36),
          ),
          height: AppSize.heightDivide(context, 1.3333),
          width: AppSize.widthMultiply(context, 1),
          decoration: BoxDecoration(
              // color: Colors.transparent,
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage(imageSliderList[index]),
                fit: BoxFit.cover,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
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
              SizedMedia.heightDivide(context, 30)
            ],
          ),
        );
      }),
      options: CarouselOptions(
          height: AppSize.heightDivide(context, 1.3333),
          viewportFraction: 1,
          onPageChanged: (value, _) {
            setState(() {
              pageIndex = value;
            });
          }),
    );
  }
}
