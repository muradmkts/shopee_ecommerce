import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';

import '../../../shared_theme/utilities/local_icon.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        background: LocalBackground.passBackground,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 5.143),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height / 23.2),
                  child: SvgPicture.asset(LocalIcon.cameraPhoto),
                ),
                Text(
                  "Setup New Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 27.06),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.2931,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Please, setup a new password for your account",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 35.30,
                      left: MediaQuery.sizeOf(context).width / 18.75,
                      right: MediaQuery.sizeOf(context).width / 18.75),
                  child: Column(
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "New Password",
                          hintStyle: TextStyle(
                            color: ColorTheme.primaryBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 81.2,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration:
                            InputDecoration(hintText: "Repeat Password"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 5.678,
                      left: MediaQuery.sizeOf(context).width / 18.75,
                      right: MediaQuery.sizeOf(context).width / 18.75),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.transparent,
                              contentPadding: EdgeInsets.all(0),
                              content: SizedBox(
                                  height: MediaQuery.sizeOf(context).height / 3,
                                  width:
                                      MediaQuery.sizeOf(context).width / 1.080,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.sizeOf(context)
                                                    .height /
                                                21.3684),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height /
                                              3.61,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorTheme.primaryWhite,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height /
                                                        20.245,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width /
                                                            6.46),
                                                child: Text(
                                                  "You reached out maximum amount of attempts. Please, try later.",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          32.48),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width /
                                                            6.46),
                                                child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                ColorTheme
                                                                    .primaryBlack),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Okay",
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(460),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 10,
                                                  spreadRadius: -10,
                                                  color: ColorTheme.primaryBlack
                                                      .withOpacity(.2),
                                                )
                                              ]),
                                          child: SvgPicture.asset(
                                              LocalIcon.exclamatoryCircle)),
                                    ],
                                  )),
                            );
                          });

                      //Popup dialogue design
                      /*showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.transparent,
                              content: SizedBox(
                                height: MediaQuery.sizeOf(context).height / 3,
                                width: MediaQuery.sizeOf(context).width,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 45),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          color: ColorTheme.primaryWhite,
                                        ),
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                3.60888,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10, top: 50),
                                              child: Text(
                                                "You reached out maximum amount of attempts, Please try later.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(460),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorTheme.secondaryGray,
                                                offset: Offset(0, 0),
                                                blurRadius: 10,
                                                spreadRadius: -7)
                                          ]),
                                      child: SvgPicture.asset(
                                          LocalIcon.exclamatoryCircle),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });*/
                      //Popup dialogue design
                    },
                    child: Text(
                      "Save",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  Get.back();

                }, child: Text("Cancel"))
              ],
            ),
          ),
        ));
  }
}
