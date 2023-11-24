import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/dropdown_button.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/bar_chart.dart';
import 'package:datingapp/widget/profile_page_widget/container_widget.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  var selectedValue = 'value1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: 'Virgin Talks'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppSize.heightDivide(context, 60),
              horizontal: AppSize.widthDivide(context, 25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activities',
                style: AppText.montserrat60016pxbl1B1B1B,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: AppSize.heightDivide(context, 60),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: AppSize.heightDivide(context, 80),
                    horizontal: AppSize.widthDivide(context, 36)),
                height: AppSize.heightDivide(context, 2.5),
                width: AppSize.widthMultiply(context, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColor.wFFFFFF,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: AppColor.bl000000w23)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    visitorsWidget(context),
                    activityDropdownButtonWidget(
                        context: context,
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        item: [
                          DropdownMenuItem(
                            value: 'value1',
                            child: Text(
                              'Monthly',
                              style: AppText.montserrat50010pxbl1B1B1B,
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'value2',
                            child: Text(
                              'Yearly',
                              style: AppText.montserrat50010pxbl1B1B1B,
                            ),
                          ),
                        ]),
                    const BarChartWidget(),
                  ],
                ),
              ),
              const ExpansionTileWidget(
                icon: 'images/likes.svg',
                title: 'Likes',
                subtitle: 'Lorem Ipsum is simply dummy',
              ),
              const ExpansionTileWidget(
                icon: 'images/matches.svg',
                title: 'Matches',
                subtitle: 'Lorem Ipsum is simply dummy',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
