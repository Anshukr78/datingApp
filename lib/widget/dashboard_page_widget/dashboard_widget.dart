import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/dashboard/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopSheetWidget extends StatefulWidget {
  const TopSheetWidget({super.key});

  @override
  State<TopSheetWidget> createState() => _TopSheetWidgetState();
}

class _TopSheetWidgetState extends State<TopSheetWidget> {
  double distanceValue = 0.0;
  RangeValues rangeValue = const RangeValues(18, 24);
  TextEditingController location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(
          //   horizontal: AppSize.widthDivide(context, 18),
          //   vertical: AppSize.heightDivide(context, 20),
          // ),
          height: AppSize.heightDivide(context, 1.82),
          width: AppSize.widthMultiply(context, 1),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: AppColor.wFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppSize.heightDivide(context, 20),
                  right: AppSize.widthDivide(context, 18),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'images/filter.svg',
                    // ignore: deprecated_member_use
                    color: AppColor.pF76A7B,
                  ),
                ),
              ),
              SizedMedia.heightDivide(context, 40),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 12),
                ),
                child: Material(
                  color: AppColor.wFFFFFF,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Distance',
                        style: AppText.montserrat60016pxbl1B1B1B,
                      ),
                      Text(
                        '${distanceValue.toInt()}Mi.',
                        style: AppText.montserrat60012pxg696969,
                      ),
                    ],
                  ),
                ),
              ),
              SizedMedia.heightDivide(context, 80),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 30),
                ),
                child: Material(
                  color: AppColor.wFFFFFF,
                  child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: AppColor.pF76A7B,
                      inactiveColor: AppColor.gC4C4C4w80,
                      value: distanceValue,
                      onChanged: (value) {
                        setState(() {
                          distanceValue = value;
                        });
                      }),
                ),
              ),
              SizedMedia.heightDivide(context, 60),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 12),
                ),
                child: Material(
                  color: AppColor.wFFFFFF,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Age Limit',
                        style: AppText.montserrat60016pxbl1B1B1B,
                      ),
                      Text(
                        '${rangeValue.start.round().toString()}-${rangeValue.end.round().toString()} ',
                        style: AppText.montserrat60012pxg696969,
                      ),
                    ],
                  ),
                ),
              ),
              SizedMedia.heightDivide(context, 80),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 30),
                ),
                child: Material(
                  color: AppColor.wFFFFFF,
                  child: RangeSlider(
                      min: 0,
                      max: 100,
                      activeColor: AppColor.pF76A7B,
                      inactiveColor: AppColor.gC4C4C4w80,
                      values: rangeValue,
                      onChanged: (values) {
                        setState(() {
                          rangeValue = values;
                        });
                      }),
                ),
              ),
              SizedMedia.heightDivide(context, 60),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 12),
                ),
                child: Material(
                  color: AppColor.wFFFFFF,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location',
                        style: AppText.montserrat60016pxbl1B1B1B,
                      ),
                      SizedMedia.widthDivide(context, 30)
                    ],
                  ),
                ),
              ),
              Material(
                color: AppColor.wFFFFFF,
                child: locationTextFormField(
                    context: context, controller: location, call: () {}),
              ),
              button316(
                  context: context,
                  text: 'Save Now',
                  call: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashProfile()));
                  })
            ],
          ),
        )
      ],
    );
  }
}
