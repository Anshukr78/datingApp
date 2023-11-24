import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/dropdown_button.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/profile/album.dart';
import 'package:datingapp/screen/pages/profile/interest.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/carousel_slider/my_profile_slider.dart';
import 'package:datingapp/widget/dashboard_page_widget/profile_details_widget.dart';
import 'package:datingapp/widget/profile_page_widget/container_widget.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  var drinkingValue = 'value1';
  var smokingValue = 'value1';
  var heightValue = 'value1';
  var virginityValue = 'value1';
  var zodiacValue = 'value1';
  var religionValue = 'value1';
  var languageValue = 'value1';
  var reasonValue = 'value1';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyProfileSlider(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 25),
                  vertical: AppSize.heightDivide(context, 60)),
              child: Column(
                children: [
                  detailsButtonWidget(
                    context: context,
                    bioTextStyle: AppText.montserrat60014pxbl1B1B1B,
                    albumTextStyle: AppText.montserrat60014pxgAAAAAA,
                    bio: () {},
                    album: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Album()));
                    },
                  ),
                  profileDetailsWidget(context, 'images/verifyB.svg'),
                  profileAboutWidget(context),
                  interestWidget(context, () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Interest()));
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileDropdownButtonWidget(
                          context: context,
                          title: 'Drinking',
                          hintText: 'Yes/No',
                          width: AppSize.widthDivide(context, 2.25),
                          dropdownWidth: AppSize.widthDivide(context, 3.6),
                          value: drinkingValue,
                          onChanged: (value) {
                            setState(() {
                              drinkingValue = value;
                            });
                          },
                          item: [
                            DropdownMenuItem(
                              value: 'value1',
                              child: Text(
                                'No',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'value2',
                              child: Text(
                                'Yes',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                          ]),
                      profileDropdownButtonWidget(
                          context: context,
                          title: 'Smoking',
                          hintText: 'Yes/No',
                          width: AppSize.widthDivide(context, 2.25),
                          dropdownWidth: AppSize.widthDivide(context, 3.6),
                          value: smokingValue,
                          onChanged: (value) {
                            setState(() {
                              smokingValue = value;
                            });
                          },
                          item: [
                            DropdownMenuItem(
                              value: 'value1',
                              child: Text(
                                'No',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'value2',
                              child: Text(
                                'Yes',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                          ]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      heightTextFormField(
                          context: context, controller: controller),
                      profileDropdownButtonWidget(
                          context: context,
                          title: 'Virginity',
                          hintText: 'Yes/No',
                          width: AppSize.widthDivide(context, 2.25),
                          dropdownWidth: AppSize.widthDivide(context, 3.6),
                          value: virginityValue,
                          onChanged: (value) {
                            setState(() {
                              virginityValue = value;
                            });
                          },
                          item: [
                            DropdownMenuItem(
                              value: 'value1',
                              child: Text(
                                'No',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'value2',
                              child: Text(
                                'Yes',
                                style: AppText.montserrat60012pxbl1B1B1B,
                              ),
                            ),
                          ]),
                    ],
                  ),
                  profileDropdownButtonWidget(
                      context: context,
                      title: 'Zodiac',
                      hintText: 'None',
                      width: AppSize.widthMultiply(context, 1),
                      dropdownWidth: AppSize.widthDivide(context, 1.2),
                      value: zodiacValue,
                      onChanged: (value) {
                        setState(() {
                          zodiacValue = value;
                        });
                      },
                      item: [
                        DropdownMenuItem(
                          value: 'value1',
                          child: Text(
                            'None',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'value2',
                          child: Text(
                            'Yes',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                      ]),
                  profileDropdownButtonWidget(
                      context: context,
                      title: 'Religion',
                      hintText: 'None',
                      width: AppSize.widthMultiply(context, 1),
                      dropdownWidth: AppSize.widthDivide(context, 1.2),
                      value: religionValue,
                      onChanged: (value) {
                        setState(() {
                          religionValue = value;
                        });
                      },
                      item: [
                        DropdownMenuItem(
                          value: 'value1',
                          child: Text(
                            'None',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'value2',
                          child: Text(
                            'Yes',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                      ]),
                  profileDropdownButtonWidget(
                      context: context,
                      title: 'Language',
                      hintText: 'None',
                      width: AppSize.widthMultiply(context, 1),
                      dropdownWidth: AppSize.widthDivide(context, 1.2),
                      value: languageValue,
                      onChanged: (value) {
                        setState(() {
                          languageValue = value;
                        });
                      },
                      item: [
                        DropdownMenuItem(
                          value: 'value1',
                          child: Text(
                            'None',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'value2',
                          child: Text(
                            'Yes',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                      ]),
                  profileDropdownButtonWidget(
                      context: context,
                      title: "I'm Here",
                      hintText: 'None',
                      width: AppSize.widthMultiply(context, 1),
                      dropdownWidth: AppSize.widthDivide(context, 1.2),
                      value: reasonValue,
                      onChanged: (value) {
                        setState(() {
                          reasonValue = value;
                        });
                      },
                      item: [
                        DropdownMenuItem(
                          value: 'value1',
                          child: Text(
                            'None',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'value2',
                          child: Text(
                            'Yes',
                            style: AppText.montserrat60012pxbl1B1B1B,
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            button327(context: context, text: 'Save Now', call: () {}),
            SizedMedia.heightDivide(context, 40)
          ],
        ),
      ),
    );
  }
}
