import 'dart:convert';

import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/otp.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/widget/show_modal_bottomsheet/otp_verify_sheet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';

import '../../api/api_string.dart';
import '../../api/string.dart';
import '../verification/birthday.dart';
import '../verification/verification.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key, required this.number, required this.verifyId});
  final String number;
  final String verifyId;

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {


  sendOtp()async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${widget.number}',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  String otpValue = '';


  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.wFFFFFF,
      body: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.heightMultiply(context, 1),
          width: AppSize.widthMultiply(context, 1),
          child: Stack(
            children: [
              Positioned(
                  top: AppSize.heightDivide(context, 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.widthDivide(context, 15)),
                    width: AppSize.widthMultiply(context, 1),
                    child: Column(children: [
                      Image.asset(
                        "images/logo.png",
                        height: AppSize.heightDivide(context, 8),
                        width: AppSize.widthDivide(context, 3.6),
                      ),
                      SizedMedia.heightDivide(context, 60),
                      Text(
                        'App Name',
                        style: AppText.montserrat70020pxg696969,
                      ),
                      SizedMedia.heightDivide(context, 13),
                      Text(
                        'OTP Verification',
                        style: AppText.montserrat60020pxpF76A7B,
                      ),
                      SizedMedia.heightDivide(context, 80),
                      Text(
                        'Code sent you on your Phone No.',
                        style: AppText.montserrat60010pxg5A5A5A,
                      ),
                      SizedMedia.heightDivide(context, 40),
                      otpBox(
                          context: context,
                          onSubmit: (value) async{
                            setState(() {
                              otpValue = value;
                            });
                            if (otpValue.length == 6) {

                              try{

                                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                                    verificationId: widget.verifyId,
                                    smsCode: otpValue
                                );
                                // Sign the user in (or link) with the credential
                                await auth.signInWithCredential(credential);
                                showModalBottomSheet(
                                    backgroundColor: AppColor.wFFFFFF,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return otpVerifySheet(
                                          context: context,
                                          call: () {
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Verification(number: widget.number,)));
                                          },
                                          number: widget.number,
                                          text: 'Successful');
                                    });



                              }catch(e){
                                showModalBottomSheet(
                                    backgroundColor: AppColor.wFFFFFF,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return otpVerifySheet(
                                          context: context,
                                          call: () {},
                                          number: widget.number,
                                          text: e.toString());
                                    });
                              }
                            }
                          }),
                      SizedMedia.heightDivide(context, 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Did not get code ? ",
                            style: AppText.montserrat60010pxg5A5A5A,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Resend",
                              style: AppText.montserrat70011pxpF33B67,
                            ),
                          ),
                        ],
                      ),
                      // button90(
                      //     context: context,
                      //     text: 'continue',
                      //     call: () {
                      //       showModalBottomSheet(
                      //           backgroundColor: AppColor.wFFFFFF,
                      //           shape: const RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.only(
                      //               topLeft: Radius.circular(25),
                      //               topRight: Radius.circular(25),
                      //             ),
                      //           ),
                      //           context: context,
                      //           builder: (context) {
                      //             return otpVerifySheet(
                      //                 context: context,
                      //                 call: () {},
                      //                 number: widget.number);
                      //           });
                      //     })
                    ]),
                  )),
              Positioned(
                  bottom: AppSize.heightMultiply(context, 0),
                  child: SizedBox(
                      width: AppSize.widthMultiply(context, 1),
                      child: SvgPicture.asset("images/otp.svg")))
            ],
          ),
        ),
      ),
    );
  }
}
