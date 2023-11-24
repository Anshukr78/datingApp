import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget profileWidget(
    {required BuildContext context,
    required double height,
    required double width}) {
  return Container(
    height: AppSize.heightDivide(context, height),
    width: AppSize.widthDivide(context, width),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: const DecorationImage(
            image: AssetImage('images/image.avif'), fit: BoxFit.cover),
        border: Border.all(width: 1, color: AppColor.gE8E8E8w32),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 7,
              color: AppColor.gA6ABBDw32)
        ]),
  );
}

class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({super.key});

  @override
  State<PrivacyWidget> createState() => _PrivacyWidgetState();
}

class _PrivacyWidgetState extends State<PrivacyWidget> {
  String value = 'open';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSize.heightDivide(context, 40),
        horizontal: AppSize.widthDivide(context, 20),
      ),
      width: AppSize.widthMultiply(context, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    value = 'open';
                  });
                },
                child: Container(
                  height: AppSize.heightDivide(context, 7.9207),
                  width: AppSize.widthDivide(context, 3.4285),
                  decoration: value == 'open'
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: AppColor.wFFFFFF,
                          boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                  color: AppColor.bl000000w19)
                            ])
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        ),
                  child: Center(child: SvgPicture.asset('images/open.svg')),
                ),
              ),
              SizedMedia.heightDivide(context, 60),
              Text(
                'Open',
                style: AppText.montserrat60012pxbl1B1B1B,
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    value = 'social';
                  });
                },
                child: Container(
                  height: AppSize.heightDivide(context, 7.9207),
                  width: AppSize.widthDivide(context, 3.4285),
                  decoration: value == 'social'
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: AppColor.wFFFFFF,
                          boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                  color: AppColor.bl000000w19)
                            ])
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        ),
                  child: Center(child: SvgPicture.asset('images/social.svg')),
                ),
              ),
              SizedMedia.heightDivide(context, 60),
              Text(
                'Social',
                style: AppText.montserrat60012pxbl1B1B1B,
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    value = 'closed';
                  });
                },
                child: Container(
                  height: AppSize.heightDivide(context, 7.9207),
                  width: AppSize.widthDivide(context, 3.4285),
                  decoration: value == 'closed'
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: AppColor.wFFFFFF,
                          boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                  color: AppColor.bl000000w19)
                            ])
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        ),
                  child: Center(child: SvgPicture.asset('images/closed.svg')),
                ),
              ),
              SizedMedia.heightDivide(context, 60),
              Text(
                'Closed',
                style: AppText.montserrat60012pxbl1B1B1B,
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget profileContainerWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: AppSize.heightDivide(context, 80),
      // horizontal: AppSize.widthDivide(context, 20),
    ),
    height: AppSize.heightDivide(context, 6.2992),
    width: AppSize.widthDivide(context, 3.3333),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: AppSize.heightDivide(context, 7.6923),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: const DecorationImage(
                image: AssetImage('images/image.avif'), fit: BoxFit.cover),
          ),
        ),
        Text(
          'Valerie Elash',
          style: AppText.montserrat60010pxbl1B1B1B,
        )
      ],
    ),
  );
}
