import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/random_call/call_screen.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RandomCall extends StatefulWidget {
  const RandomCall({super.key});

  @override
  State<RandomCall> createState() => _RandomCallState();
}

class _RandomCallState extends State<RandomCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: Column(
        children: [
          SizedMedia.heightDivide(context, 40),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: AppSize.widthDivide(context, 25),
                vertical: AppSize.heightDivide(context, 60)),
            width: AppSize.widthMultiply(context, 1),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: AppText.montserrat60015pxbl1B1B1B,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(
                  vertical: AppSize.heightDivide(context, 15)),
              width: AppSize.widthMultiply(context, 1),
              child: SvgPicture.asset('images/randomCall.svg')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset('images/connect.svg'),
                  SizedMedia.heightDivide(context, 60),
                  button166(
                      context: context,
                      text: 'Connect To Stranger',
                      call: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CallScreen()));
                      }),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('images/talk.svg'),
                  SizedMedia.heightDivide(context, 60),
                  button166(
                      context: context,
                      text: 'Talk To Opposite Gender',
                      call: () {}),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
