// ignore_for_file: deprecated_member_use

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/meet_room/create_room.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:datingapp/widget/meet_room_page_widget/room_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeetRoom extends StatefulWidget {
  const MeetRoom({super.key});

  @override
  State<MeetRoom> createState() => _MeetRoomState();
}

class _MeetRoomState extends State<MeetRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            button327(
                context: context,
                text: 'Create New Room',
                call: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateRoom()));
                }),
            ...List.generate(2, (index) {
              return roomWidget(context);
            })
          ],
        ),
      ),
    );
  }
}
