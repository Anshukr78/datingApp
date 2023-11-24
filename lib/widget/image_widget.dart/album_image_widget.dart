import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlbumImageWidget extends StatefulWidget {
  const AlbumImageWidget({super.key, required this.call});
  final Function call;
  @override
  State<AlbumImageWidget> createState() => _AlbumImageWidgetState();
}

class _AlbumImageWidgetState extends State<AlbumImageWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.call();
        },
        child: Container(
            height: AppSize.heightDivide(context, 4.4665),
            width: AppSize.widthDivide(context, 2.1428),
            decoration: BoxDecoration(
                // border: Border.all(width: 2, color: AppColor.gA6ABBDw32),
                borderRadius: BorderRadius.circular(21),
                color: AppColor.wFFFFFF,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 2,
                      color: AppColor.bl000000w16)
                ]),
            child: Center(child: SvgPicture.asset("images/album.svg"))));
  }
}
