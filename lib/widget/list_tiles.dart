import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/meet_room_page_widget/container_widget.dart';
import 'package:flutter/material.dart';

Widget activityListTile(BuildContext context, Function call) {
  return ListTile(
    onTap: () {
      call();
    },
    leading: profileWidget(context: context, height: 16.3265, width: 7.3469),
    title: Text(
      'Likes',
      style: AppText.montserrat60013pxbl1B1B1B,
    ),
    subtitle: Text(
      'Lorem Ipsum is simply dummy',
      style: AppText.montserrat50011pxg5A5A5A,
    ),
  );
}

Widget radioListTile(
    {required BuildContext context,
    required String title,
    required var value,
    required var groupValue,
    required Function(dynamic) call}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: AppSize.heightDivide(context, 70),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColor.wFFFFFF,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 4,
              color: AppColor.bl000000w19)
        ]),
    child: ListTile(
      title: Text(
        title,
        style: AppText.montserrat60015pxbl1B1B1B,
      ),
      trailing: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: (value) {
          call(value);
        },
        activeColor: AppColor.b5363DD,
      ),
    ),
  );
}
