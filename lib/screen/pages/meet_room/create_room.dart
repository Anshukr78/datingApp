import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/meet_room/create_room_2.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: Column(children: [
        roomTextFormField(context: context, controller: title),
        const PrivacyWidget(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 80),
            horizontal: AppSize.widthDivide(context, 20),
          ),
          child: Divider(
            thickness: 1,
            color: AppColor.gD4D4D4,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.widthDivide(context, 8),
          ),
          width: AppSize.widthMultiply(context, 1),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: AppText.montserrat50011pxbl1B1B1B,
            textAlign: TextAlign.center,
          ),
        ),
        SizedMedia.heightDivide(context, 40),
        button327(
            context: context,
            text: 'Start Now',
            call: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CreateRoom2()));
            }),
      ]),
    );
  }
}
