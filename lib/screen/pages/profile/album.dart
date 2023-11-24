import 'dart:io';

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/pages/profile/my_profile.dart';
import 'package:datingapp/widget/app_bar.dart';
import 'package:datingapp/widget/image_widget.dart/album_image_widget.dart';
import 'package:datingapp/widget/profile_page_widget/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  List imageList = [];
  pickImage() async {
    final ImagePicker imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) {
    } else {
      setState(() {
        imageList.add(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      appBar: appBarWidget(context: context, title: ''),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 60),
            horizontal: AppSize.widthDivide(context, 20),
          ),
          height: AppSize.heightMultiply(context, 1),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 179 / 168),
            itemBuilder: (context, index) {
              return index == 0
                  ? AlbumImageWidget(
                      call: () {
                        pickImage();
                      },
                    )
                  : Container(
                      height: AppSize.heightDivide(context, 4.4665),
                      width: AppSize.widthDivide(context, 2.1428),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(imageList[index - 1]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(21),
                          color: AppColor.wFFFFFF,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                                color: AppColor.bl000000w16)
                          ]),
                    );
            },
            itemCount: imageList.length + 1,
          ),
        ),
      ),
      bottomSheet: Container(
        height: AppSize.heightDivide(context, 5.5),
        width: AppSize.widthMultiply(context, 1),
        color: AppColor.wFFFFFF,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 30)),
              child: detailsButtonWidget(
                context: context,
                bioTextStyle: AppText.montserrat60014pxgAAAAAA,
                albumTextStyle: AppText.montserrat60014pxbl1B1B1B,
                bio: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfile()));
                },
                album: () {},
              ),
            ),
            button327(context: context, text: 'Save Now', call: () {}),
          ],
        ),
      ),
    );
  }
}
