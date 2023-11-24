import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/screen/pages/chat/chat.dart';
import 'package:datingapp/screen/pages/dashboard/dashboard.dart';
import 'package:datingapp/screen/pages/meet_room/meet_room.dart';
import 'package:datingapp/screen/pages/profile/profile.dart';
import 'package:datingapp/screen/pages/random_call/random_call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  List<Map<String, dynamic>> mapList = [
    {
      'icon': SvgPicture.asset(
        'images/profile.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
      'iconG': SvgPicture.asset(
        'images/profile.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
    },
    {
      'icon': SvgPicture.asset(
        'images/chat.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
      'iconG': SvgPicture.asset(
        'images/chat.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
    },
    {
      'icon': SvgPicture.asset(
        'images/dashboard.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
      'iconG': SvgPicture.asset(
        'images/dashboard.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
    },
    {
      'icon': SvgPicture.asset(
        'images/call.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
      'iconG': SvgPicture.asset(
        'images/call.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
    },
    {
      'icon': SvgPicture.asset(
        'images/meet.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
      'iconG': SvgPicture.asset(
        'images/meet.svg',
        // ignore: deprecated_member_use
        color: AppColor.wFFFFFF,
      ),
    },
  ];

  List<Widget> pages = [
    const Profile(),
    const Chat(),
    const Dashboard(),
    const RandomCall(),
    const MeetRoom(),
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        height: AppSize.heightDivide(context, 11.9402),
        width: AppSize.widthMultiply(context, 1),
        decoration: BoxDecoration(
            color: AppColor.wFFFFFF,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(17),
              topRight: Radius.circular(17),
            ),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 0),
                  blurRadius: 6,
                  color: AppColor.bl000000w23)
            ]),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(mapList.length, (e) {
              return SizedBox(
                height: AppSize.heightDivide(context, 20),
                width: AppSize.widthDivide(context, 9),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = e;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShaderMask(
                          // child: mapList[e]['iconO'],
                          child: selectedIndex == e
                              ? mapList[e]['iconG']
                              : mapList[e]['icon'],
                          shaderCallback: (border) {
                            // ignore: prefer_const_constructors
                            final Rect rect = Rect.fromLTRB(0, 0, 30, 30);
                            return selectedIndex == e
                                ? LinearGradient(
                                    colors: [
                                      AppColor.pF76A7B,
                                      AppColor.b5363DD,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ).createShader(rect)
                                : LinearGradient(
                                    colors: [
                                      AppColor.g9D9D9D,
                                      AppColor.g9D9D9D,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ).createShader(rect);
                          }),
                      selectedIndex == e
                          ? Container(
                              height: AppSize.heightDivide(context, 160),
                              width: AppSize.widthDivide(context, 72),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColor.pF76A7B,
                                      AppColor.b5363DD,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  )),
                            )
                          : SizedBox(
                              height: AppSize.widthMultiply(context, 0),
                            )
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}
