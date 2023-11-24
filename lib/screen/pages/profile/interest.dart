import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  List yummyInterest = [
    'Pet Lover',
    'Travel',
    'Reading',
    'Pet Lover1',
    'Travel1',
    'Reading1',
    'Pet Lover2',
    'Travel2',
    'Reading2',
  ];

  List selectedYummyInterest = [];
  List socialInterest = [
    'Pet Lover',
    'Travel',
    'Reading',
  ];

  List selectedSocialInterest = [];
  List creativeInterest = [
    'Pet Lover',
    'Travel',
    'Reading',
  ];

  List selectedCreativeInterest = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: 'Virgin Talks'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedMedia.heightDivide(context, 60),
            button327(context: context, text: 'Save Now', call: () {}),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: AppSize.heightDivide(context, 60),
                horizontal: AppSize.widthDivide(context, 20),
              ),
              padding: EdgeInsets.symmetric(
                vertical: AppSize.heightDivide(context, 60),
                // horizontal: AppSize.widthDivide(context, 20),
              ),
              height: AppSize.heightDivide(context, 4.2),
              width: AppSize.widthMultiply(context, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yummy Tummy',
                    style: AppText.montserrat60016pxbl1B1B1B,
                  ),
                  SizedBox(
                    height: AppSize.heightDivide(context, 6.2),
                    width: AppSize.widthMultiply(context, 1),
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 26 / 98,
                        ),
                        itemCount: yummyInterest.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (selectedYummyInterest
                                  .contains(yummyInterest[index])) {
                                setState(() {
                                  selectedYummyInterest
                                      .remove(yummyInterest[index]);
                                });
                              } else {
                                setState(() {
                                  selectedYummyInterest
                                      .add(yummyInterest[index]);
                                });
                              }
                            },
                            child: Container(
                              height: AppSize.heightDivide(context, 30.7692),
                              width: AppSize.widthDivide(context, 3.6734),
                              decoration: selectedYummyInterest
                                      .contains(yummyInterest[index])
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: LinearGradient(
                                          colors: [
                                            AppColor.pF76A7B,
                                            AppColor.b5363DD
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: AppColor.gDEDEDE,
                                    ),
                              child: Center(
                                child: Text(
                                  yummyInterest[index],
                                  style: selectedYummyInterest
                                          .contains(yummyInterest[index])
                                      ? AppText.montserrat60012pxwFFFFFF
                                      : AppText.montserrat60012pxbl1B1B1B,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
