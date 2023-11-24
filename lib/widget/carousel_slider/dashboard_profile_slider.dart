import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/widget/dashboard_page_widget/profile_details_widget.dart';
import 'package:flutter/material.dart';

class DashboardProfileSlider extends StatefulWidget {
  const DashboardProfileSlider({super.key});

  @override
  State<DashboardProfileSlider> createState() => _DashboardProfileSliderState();
}

class _DashboardProfileSliderState extends State<DashboardProfileSlider> {
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
    return SizedBox(
      // margin:
      //     EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 30)),
      height: AppSize.heightMultiply(context, 0.8),
      width: AppSize.widthMultiply(context, 1),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: buttonController,
            items: List.generate(imageSliderList.length, (index) {
              return Container(
                height: AppSize.heightMultiply(context, 0.65),
                width: AppSize.widthMultiply(context, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                      image: AssetImage(imageSliderList[index]),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    profileDetailWidget(context),
                  ],
                ),
              );
            }),
            options: CarouselOptions(
                height: AppSize.heightMultiply(context, 0.65),
                viewportFraction: 1,
                onPageChanged: (value, _) {
                  setState(() {
                    pageIndex = value;
                  });
                }),
          ),
          SizedMedia.heightDivide(context, 13.333)
        ],
      ),
    );
  }
}
