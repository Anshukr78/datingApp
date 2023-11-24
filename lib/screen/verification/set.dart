import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetWidget extends StatefulWidget {
  const SetWidget({super.key});

  @override
  State<SetWidget> createState() => _SetWidgetState();
}

class _SetWidgetState extends State<SetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: Column(
        children: [
          SizedMedia.heightDivide(context, 4),
          SizedBox(
              width: AppSize.widthMultiply(context, 1),
              child: SvgPicture.asset("images/set.svg")),
          SizedMedia.heightDivide(context, 60),
          Text(
            "You are all Set",
            style: AppText.montserrat60032pxpF76A7B,
          ),
        ],
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavBarWidget()));
                })),
      ),
    );
  }
}
