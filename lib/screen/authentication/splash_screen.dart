import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.heightMultiply(context, 1),
      width: AppSize.widthMultiply(context, 1),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/splash.avif"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedMedia.heightDivide(context, 20),
              Image.asset("images/logo.png"),
              SizedMedia.heightDivide(context, 60),
              Text(
                'App Name',
                style: AppText.montserrat70025pxg5A5A5A,
              ),
              SizedMedia.heightDivide(context, 2.5),
              button243(
                  context: context,
                  icon: SvgPicture.asset("images/mobile.svg"),
                  bgColor: AppColor.wFFFFFF,
                  text: 'Continue With Phone No.',
                  textStyle: AppText.montserrat70013pxbl000000,
                  call: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  }),
              SizedMedia.heightDivide(context, 60),
              button243(
                  context: context,
                  icon: SvgPicture.asset("images/facebook.svg"),
                  bgColor: AppColor.b4E6CAB,
                  text: 'Log in With Facebook',
                  textStyle: AppText.montserrat70013pxwFFFFFF,
                  call: () {}),
              SizedMedia.heightDivide(context, 60),
              button243(
                  context: context,
                  icon: SvgPicture.asset("images/google.svg"),
                  bgColor: AppColor.rF32E06,
                  text: 'Sign in With Google',
                  textStyle: AppText.montserrat70013pxwFFFFFF,
                  call: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
