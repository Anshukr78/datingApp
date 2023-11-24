import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/dropdown_button.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/list_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget detailsButtonWidget(
    {required BuildContext context,
    required TextStyle bioTextStyle,
    required TextStyle albumTextStyle,
    required Function bio,
    required Function album}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: AppSize.heightDivide(context, 60)),
    height: AppSize.heightDivide(context, 20.5128),
    width: AppSize.widthMultiply(context, 1),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColor.wFFFFFF,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 4,
              color: AppColor.bl000000w19)
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            bio();
          },
          child: SizedBox(
            width: AppSize.widthDivide(context, 2.4),
            child: Center(
              child: Text(
                'Bio',
                style: bioTextStyle,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppSize.heightDivide(context, 160)),
          child: VerticalDivider(
            thickness: 1,
            color: AppColor.gD4D4D4w44,
          ),
        ),
        GestureDetector(
          onTap: () {
            album();
          },
          child: SizedBox(
            width: AppSize.widthDivide(context, 2.4),
            child: Center(
              child: Text(
                'Album',
                style: albumTextStyle,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget profileAboutWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedMedia.heightDivide(context, 40),
      Text(
        'About',
        style: AppText.montserrat60013pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 100),
      Container(
        padding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 60),
            horizontal: AppSize.widthDivide(context, 30)),
        // height: AppSize.heightDivide(context, 12.5),
        width: AppSize.widthMultiply(context, 1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: AppColor.wFFFFFF,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                  color: AppColor.bl000000w19)
            ]),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing.',
          style: AppText.montserrat50012pxbl1B1B1B,
        ),
      ),
    ],
  );
}

Widget interestWidget(BuildContext context, Function call) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedMedia.heightDivide(context, 40),
      Text(
        'Interest',
        style: AppText.montserrat60013pxbl1B1B1B,
      ),
      SizedMedia.heightDivide(context, 100),
      Container(
        padding: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 80),
            horizontal: AppSize.widthDivide(context, 30)),
        height: AppSize.heightDivide(context, 19.5121),
        width: AppSize.widthMultiply(context, 1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: AppColor.wFFFFFF,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                  color: AppColor.bl000000w19)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: AppSize.widthMultiply(context, 0.7),
              child: Text(
                'Pet Lover, Travel, Reading',
                style: AppText.montserrat60012pxbl1B1B1B,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            InkWell(
              onTap: () {
                call();
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.bl1B1B1B,
                size: AppSize.heightDivide(context, 45),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget visitorsWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: AppSize.heightDivide(context, 18.1818),
        width: AppSize.widthDivide(context, 8.1818),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.b5363DD,
            border: Border.all(width: 1, color: AppColor.gE8E8E8w32),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 7,
                  color: AppColor.gA6ABBDw32)
            ]),
        child: Center(child: SvgPicture.asset('images/visitors.svg')),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: AppSize.widthMultiply(context, 0.68),
              child: Text(
                'Visitors',
                style: AppText.montserrat60011pxbl1B1B1B,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
          SizedBox(
              width: AppSize.widthMultiply(context, 0.68),
              child: Text(
                'Lorem Ipsum is simply dummy',
                style: AppText.montserrat50011pxgAAAAAA,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
        ],
      )
    ],
  );
}

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});
  final String icon;
  final String title;
  final String subtitle;

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  var selectedValue = 'value1';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSize.heightDivide(context, 60),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColor.wFFFFFF,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 5,
                color: AppColor.bl000000w23)
          ]),
      width: AppSize.widthMultiply(context, 1),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          collapsedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          title: Text(
            widget.title,
            style: AppText.montserrat60011pxbl1B1B1B,
          ),
          subtitle: Text(
            widget.subtitle,
            style: AppText.montserrat50011pxgAAAAAA,
          ),
          leading: SvgPicture.asset(widget.icon),
          iconColor: AppColor.b5363DD,
          collapsedIconColor: AppColor.b5363DD,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                              'Date',
                              style: AppText.montserrat50010pxbl1B1B1B,
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'value2',
                            child: Text(
                              'Month',
                              style: AppText.montserrat50010pxbl1B1B1B,
                            ),
                          ),
                        ]),
                    SizedMedia.widthDivide(context, 30)
                  ],
                ),
                ...List.generate(
                    4, (index) => activityListTile(context, () {})),
                SizedMedia.heightDivide(context, 60)
              ],
            )
          ],
        ),
      ),
    );
  }
}
