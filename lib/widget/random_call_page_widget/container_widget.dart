import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget callActivityWidget(
    {required BuildContext context,
    required String image,
    required Function call}) {
  return GestureDetector(
    onTap: () {
      call();
    },
    child: Container(
      height: AppSize.heightDivide(context, 12.6984),
      width: AppSize.widthDivide(context, 5.7142),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.wFFFFFF,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                color: AppColor.bl000000w25)
          ]),
      child: Center(child: SvgPicture.asset(image)),
    ),
  );
}
