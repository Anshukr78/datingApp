import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/carousel_slider/dashboard_profile_slider.dart';
import 'package:datingapp/widget/dashboard_page_widget/dashboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  onFunction() {
    showGeneralDialog(
        context: context,
        barrierColor: AppColor.bl000000w16,
        barrierDismissible: true,
        transitionDuration: const Duration(microseconds: 500),
        barrierLabel: MaterialLocalizations.of(context).dialogLabel,
        pageBuilder: (context, _, __) {
          return const TopSheetWidget();
        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position:
                CurvedAnimation(parent: animation, curve: Curves.easeInOut)
                    .drive(Tween(
              begin: const Offset(0, -1.0),
              end: Offset.zero,
            )),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: SizedBox(
        height: AppSize.heightMultiply(context, 1),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.widthDivide(context, 18),
                vertical: AppSize.heightDivide(context, 20),
              ),
              height: AppSize.heightDivide(context, 2.1739),
              width: AppSize.widthMultiply(context, 1),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                      colors: [AppColor.pF76A7B, AppColor.b5363DD],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedMedia.widthDivide(context, 10.5882),
                  Text(
                    'Virgin Talks',
                    style: AppText.montserrat70020pxwFFFFFF,
                  ),
                  GestureDetector(
                    onTap: () {
                      onFunction();
                    },
                    child: SvgPicture.asset('images/filter.svg'),
                  ),
                ],
              ),
            ),
            Positioned(
                left: AppSize.widthDivide(context, 30),
                right: AppSize.widthDivide(context, 30),
                top: AppSize.heightDivide(context, 9),
                child: const DashboardProfileSlider()),
          ],
        ),
      ),
    );
  }
}
