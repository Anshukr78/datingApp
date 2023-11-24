
import 'dart:convert';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/screen/verification/album.dart';
import 'package:datingapp/screen/verification/birthday.dart';
import 'package:datingapp/screen/verification/gender.dart';
import 'package:datingapp/screen/verification/interests.dart';
import 'package:datingapp/screen/verification/name.dart';
import 'package:datingapp/screen/verification/set.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../api/api_string.dart';
import '../../api/string.dart';



class Verification extends StatefulWidget {
  const Verification({super.key, required this.number});
  final String number;

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  String gender = '';
  String name = '';
  String dob = '';
  List interest = [];
  List album = [];
  PageController pageController = PageController();
  int index = 0;


  Future<void> getRegister()async {
    var data = {
      mobileApi : widget.number,
      fcmIdApi : FirebaseAuth.instance.currentUser!.uid,
      genderApi : gender,
      nameApi : name,
      latApi : '',
      longApi : '',
      cityApi : '',
      countryApi : '',
    };

    Response response = await post(loginApi, body: data).timeout(const Duration(seconds: 10));

    if(response.statusCode == 200){
      var register = json.decode(response.body);

      print(response);
    }else{
      print(response.statusCode);
    }





  }


  uploadData()async{



  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppSize.heightMultiply(context, 1),
          width: AppSize.widthMultiply(context, 1),
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
              if(index == 4){

              }
            },
            children: [
              GenderWidget(
                controller: pageController,
                gender: gender,
              ),
              NameWidget(
                controller: pageController,
                name: name,
              ),
              BirthdayWidget(
                controller: pageController,
                dob: dob,
              ),
              InterestsWidget(
                controller: pageController,
                interest: interest,
              ),
              AlbumWidget(
                controller: pageController,
                album: album,
              ),
              const SetWidget(),
            ],
          ),
        ),
        Positioned(
            top: AppSize.heightDivide(context, 20),
            left: AppSize.widthDivide(context, 2.5),
            right: AppSize.widthDivide(context, 2.5),
            child: CarouselIndicator(
              count: 6,
              index: index,
              height: AppSize.heightDivide(context, 88.8888),
              width: AppSize.widthDivide(context, 40),
              color: AppColor.gD4D4D4,
              activeColor: AppColor.pF76A7B,
            )
        ),
      ],
    );
  }
}
