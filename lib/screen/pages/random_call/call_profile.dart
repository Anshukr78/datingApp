import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/carousel_slider/call_profile_slider.dart';
import 'package:datingapp/widget/dashboard_page_widget/container_widget.dart';
import 'package:datingapp/widget/dashboard_page_widget/profile_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget callProfileWidget(
    {required BuildContext context,
    required Function profile,
    required Function message}) {
  return Dialog(
    insetPadding:
        EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 30)),
    backgroundColor: Colors.transparent,
    child: SizedBox(
      height: AppSize.heightDivide(context, 1.1594),
      width: AppSize.widthMultiply(context, 1),
      child: Stack(
        children: [
          Container(
            height: AppSize.heightDivide(context, 1.2084),
            width: AppSize.widthMultiply(context, 1),
            decoration: BoxDecoration(
                color: AppColor.wFFFFFF,
                borderRadius: BorderRadius.circular(23)),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                const CallProfileWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSize.widthDivide(context, 25),
                      vertical: AppSize.heightDivide(context, 40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileDetailsWidget(context, 'images/verify.svg'),
                      dashboardAboutWidget(context),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppSize.heightDivide(context, 80)),
                        child: Divider(
                          thickness: 1,
                          color: AppColor.gC4C4C4w28,
                        ),
                      ),
                      Text(
                        'Interests',
                        style: AppText.montserrat60013pxbl1B1B1B,
                      ),
                      SizedMedia.heightDivide(context, 100),
                      SizedBox(
                        width: AppSize.widthMultiply(context, 1),
                        child: Text(
                          'Pet Lover, Travel, Reading....',
                          style: AppText.montserrat60012pxbl1B1B1B,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppSize.heightDivide(context, 80)),
                        child: Divider(
                          thickness: 1,
                          color: AppColor.gC4C4C4w28,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          containerWidget(
                              context: context,
                              width: AppSize.widthDivide(context, 2.4),
                              title: 'Drinking',
                              subtitle: 'No'),
                          containerWidget(
                              context: context,
                              width: AppSize.widthDivide(context, 2.4),
                              title: 'Smoking',
                              subtitle: 'No'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          containerWidget(
                              context: context,
                              width: AppSize.widthDivide(context, 2.4),
                              title: 'Height',
                              subtitle: "157cm/5'2"),
                          containerWidget(
                              context: context,
                              width: AppSize.widthDivide(context, 2.4),
                              title: 'Virginity',
                              subtitle: 'No'),
                        ],
                      ),
                      containerWidget(
                          context: context,
                          width: AppSize.widthMultiply(context, 1),
                          title: 'Zodiac',
                          subtitle: "Libra"),
                      containerWidget(
                          context: context,
                          width: AppSize.widthMultiply(context, 1),
                          title: 'Religion',
                          subtitle: "Christian"),
                      containerWidget(
                          context: context,
                          width: AppSize.widthMultiply(context, 1),
                          title: 'Language',
                          subtitle: "English"),
                      containerWidget(
                          context: context,
                          width: AppSize.widthMultiply(context, 1),
                          title: "I'm Here",
                          subtitle: "To make new friends"),
                      SizedMedia.heightDivide(context, 20),
                    ],
                  ),
                ),
              ],
            ))),
          ),
          Positioned(
            top: AppSize.heightDivide(context, 1.29),
            left: AppSize.widthDivide(context, 5),
            right: AppSize.widthDivide(context, 5),
            child: GestureDetector(
              onTap: () {
                message();
              },
              child: Container(
                height: AppSize.heightDivide(context, 11.5942),
                width: AppSize.widthDivide(context, 5.2173),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.wFFFFFF,
                    border: Border.all(width: 1, color: AppColor.gE8E8E8w32),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 7,
                          color: AppColor.gA6ABBDw32)
                    ]),
                child: Center(child: SvgPicture.asset('images/message.svg')),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
