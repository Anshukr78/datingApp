import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/carousel_slider/my_profile_slider.dart';
import 'package:datingapp/widget/dashboard_page_widget/container_widget.dart';
import 'package:datingapp/widget/dashboard_page_widget/profile_details_widget.dart';
import 'package:flutter/material.dart';

class DashProfile extends StatefulWidget {
  const DashProfile({super.key});

  @override
  State<DashProfile> createState() => _DashProfileState();
}

class _DashProfileState extends State<DashProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyProfileSlider(),
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
                          width: AppSize.widthDivide(context, 2.2929),
                          title: 'Drinking',
                          subtitle: 'No'),
                      containerWidget(
                          context: context,
                          width: AppSize.widthDivide(context, 2.2929),
                          title: 'Smoking',
                          subtitle: 'No'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      containerWidget(
                          context: context,
                          width: AppSize.widthDivide(context, 2.2929),
                          title: 'Height',
                          subtitle: "157cm/5'2"),
                      containerWidget(
                          context: context,
                          width: AppSize.widthDivide(context, 2.2929),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
