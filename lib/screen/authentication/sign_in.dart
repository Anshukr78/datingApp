import 'package:datingapp/helper/button.dart';
import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/dropdown_button.dart';
import 'package:datingapp/helper/size.dart';
import 'package:datingapp/helper/text_form_field.dart';
import 'package:datingapp/helper/text_style.dart';
import 'package:datingapp/screen/authentication/otp_verify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var selectedValue = 'value1';
  TextEditingController phone = TextEditingController();
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
                  child: Column(
                    children: [
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
                      SizedMedia.heightDivide(context, 8),
                      Text(
                        'My Phone No.',
                        style: AppText.montserrat60020pxpF76A7B,
                      ),
                      SizedMedia.heightDivide(context, 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          signInDropdownButtonWidget(
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
                                    '+91',
                                    style: AppText.montserrat60015pxbl1B1B1B,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'value2',
                                  child: Text(
                                    '+92',
                                    style: AppText.montserrat60015pxbl1B1B1B,
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'value3',
                                  child: Text(
                                    '+93',
                                    style: AppText.montserrat60015pxbl1B1B1B,
                                  ),
                                ),
                              ]),
                          // signInTextFormField(
                          //     context: context,
                          //     controller: phone,
                          //     hintText: 'Phone no.'),
                          Container(
                            height: AppSize.heightDivide(context, 18.1818),
                            width: AppSize.widthDivide(context, 1.6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: TextFormField(
                              onChanged: (value) async{
                                if (value.length == 10) {

                                  try{
                                    await FirebaseAuth.instance.verifyPhoneNumber(
                                      phoneNumber: '+91${phone.text.trim()}',
                                      verificationCompleted: (PhoneAuthCredential credential) {},
                                      verificationFailed: (FirebaseAuthException e) {},
                                      codeSent: (String verificationId, int? resendToken) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => OtpVerify(
                                                  number: phone.text.trim(), verifyId: verificationId,
                                                )));
                                      },
                                      codeAutoRetrievalTimeout: (String verificationId) {},
                                    );
                                  }on FirebaseException catch(e){
                                    print('exception');
                                    print(e.message.toString());
                                  }catch(e){
                                    print('catch');
                                    print(e.toString());
                                  }

                                }
                              },
                              style: AppText.montserrat50015pxbl1B1B1B,
                              controller: phone,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: AppSize.heightDivide(context, 150),
                                    horizontal: AppSize.widthDivide(context, 36)),
                                filled: true,
                                fillColor: AppColor.wFFFFFF,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(width: 1, color: AppColor.gAAAAAA)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(width: 1, color: AppColor.gAAAAAA)),
                                hintText: 'Phone no.',
                                hintStyle: AppText.montserrat50015pxgAAAAAA,
                              ),
                            ),
                          )
                        ],
                      ),
                      // button90(
                      //     context: context,
                      //     text: 'continue',
                      //     call: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const OtpVerify()));
                      //     })
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: AppSize.heightMultiply(context, 0),
                  child: SizedBox(
                      width: AppSize.widthMultiply(context, 1),
                      child: SvgPicture.asset("images/signin.svg")))
            ],
          ),
        ),
      ),
    );
  }
}
