import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/random_call/call_profile.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/random_call_page_widget/container_widget.dart';
import 'package:datingapp/widget/show_modal_bottomsheet/random_call_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SlidingUpPanel(
        minHeight: AppSize.heightDivide(context, 26),
        maxHeight: AppSize.heightDivide(context, 3.1007),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        parallaxEnabled: true,
        body: SizedBox(
          height: AppSize.heightMultiply(context, 1),
          width: AppSize.widthMultiply(context, 1),
          child: Column(
            children: [
              SizedMedia.heightDivide(context, 15),
              Container(
                height: AppSize.heightDivide(context, 15.3846),
                width: AppSize.widthDivide(context, 1.9565),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: AppColor.b5363DDw8),
                child: Center(
                  child: Text(
                    '03:00',
                    style: AppText.montserrat70023pxbl1B1B1B,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: AppSize.heightDivide(context, 15)),
                  width: AppSize.widthMultiply(context, 1),
                  child: SvgPicture.asset('images/randomCall.svg')),
              SizedMedia.heightDivide(context, 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  callActivityWidget(
                      context: context,
                      image: 'images/microphone.svg',
                      call: () {}),
                  SizedMedia.widthDivide(context, 25),
                  callActivityWidget(
                      context: context, image: 'images/reset.svg', call: () {}),
                ],
              )
            ],
          ),
        ),
        panelBuilder: (controller) {
          return randomCallSheet(
              context: context,
              call: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return callProfileWidget(
                          context: context, profile: () {}, message: () {});
                    });
              });
        },
      ),
    );
  }
}
