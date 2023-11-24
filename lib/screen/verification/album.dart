// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/image_widget.dart/album_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AlbumWidget extends StatefulWidget {
  AlbumWidget({super.key, required this.album, required this.controller});
  List album;
  final PageController controller;

  @override
  State<AlbumWidget> createState() => _AlbumWidgetState();
}

class _AlbumWidgetState extends State<AlbumWidget> {
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
      body: Padding(
        padding: EdgeInsets.only(
          top: AppSize.heightDivide(context, 10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "My best Photos/Videos",
                style: AppText.montserrat60024pxpF76A7B,
              ),
              Container(
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
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: AppSize.heightDivide(context, 8),
        width: AppSize.widthMultiply(context, 1),
        color: AppColor.wFFFFFF,
        child: Center(
            child: button316(
                context: context,
                text: 'Continue',
                call: () {
                  setState(() {
                    widget.album = imageList;
                  });
                  widget.controller.nextPage(
                      duration: const Duration(microseconds: 500),
                      curve: Curves.bounceIn);
                })),
      ),
    );
  }
}
