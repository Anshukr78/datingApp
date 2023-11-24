import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/bottom_sheets.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:flutter/material.dart';

class CreateRoom2 extends StatefulWidget {
  const CreateRoom2({super.key});

  @override
  State<CreateRoom2> createState() => _CreateRoom2State();
}

class _CreateRoom2State extends State<CreateRoom2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppSize.heightDivide(context, 80),
                  horizontal: AppSize.widthDivide(context, 25)),
              child: Text(
                'Title Name....',
                style: AppText.montserrat60015pxbl1B1B1B,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 25)),
              height: AppSize.heightDivide(context, 2.6666),
              width: AppSize.widthMultiply(context, 1),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 108 / 145,
                ),
                itemBuilder: (context, index) {
                  return profileContainerWidget(context);
                },
                itemCount: 6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppSize.heightDivide(context, 40),
                  bottom: AppSize.heightDivide(context, 80),
                  left: AppSize.widthDivide(context, 25)),
              child: Text(
                'Others in the room',
                style: AppText.montserrat60013pxg696969,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 25)),
              height: AppSize.heightDivide(context, 2.6666),
              width: AppSize.widthMultiply(context, 1),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 108 / 145,
                ),
                itemBuilder: (context, index) {
                  return profileContainerWidget(context);
                },
                itemCount: 6,
              ),
            ),
            SizedMedia.heightDivide(context, 8.8888)
          ],
        ),
      ),
      bottomSheet: const CreateRoomBottomSheet(),
    );
  }
}
