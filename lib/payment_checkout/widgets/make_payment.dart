import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../cart/ui/cart_screen.dart';
import '../../shared_theme/utilities/color_theme.dart';
import '../../shared_theme/utilities/local_icon.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 13.53,
      width: double.maxFinite,
      decoration:
      BoxDecoration(color: ColorTheme.secondaryGray.withOpacity(.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 18.75,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                  text: "Total",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: ColorTheme.primaryBlack),
                  children: [
                    TextSpan(
                      text: "  \$${322}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorTheme.primaryBlack),
                    )
                  ]),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 3,
              height: MediaQuery.sizeOf(context).height / 20.3,
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: ColorTheme.primaryWhite,
                        context: context,
                        builder: (context) {
                          return Container(
                            height:
                            MediaQuery.sizeOf(context).height / 2.95,
                            width: double.maxFinite,
                            child: Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.sizeOf(context).width /
                                      18.75),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.sizeOf(context)
                                            .height /
                                            20.92),
                                    child: Text(
                                      "Payment Methods",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: ColorTheme.primaryBlack),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () async{

                                          showDialog(
                                              context: context,
                                              builder:
                                                  (BuildContext context) {
                                                return AlertDialog(
                                                  backgroundColor:
                                                  Colors.transparent,
                                                  contentPadding:
                                                  EdgeInsets.all(0),
                                                  content: SizedBox(
                                                      height: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .height /
                                                          5.377,
                                                      width: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .width /
                                                          1.080,
                                                      child: Stack(
                                                        alignment:
                                                        Alignment
                                                            .topCenter,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: MediaQuery.sizeOf(context)
                                                                    .height /
                                                                    21.3684),
                                                            child:
                                                            Container(
                                                              height: MediaQuery.sizeOf(context)
                                                                  .height /
                                                                  3.61,
                                                              decoration:
                                                              BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius.circular(
                                                                    20),
                                                                color: ColorTheme
                                                                    .primaryWhite,
                                                              ),
                                                              child:
                                                              Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                    MediaQuery.sizeOf(context).height / 20.245,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                    EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 6.46),
                                                                    child:
                                                                    Text(
                                                                      "Payment is in process",
                                                                      style:
                                                                      TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                                                                      textAlign:
                                                                      TextAlign.center,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                    EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 6.46),
                                                                    child:
                                                                    Text(
                                                                      "Please, wait a few moments",
                                                                      style:
                                                                      TextStyle(fontSize: 13),
                                                                      textAlign:
                                                                      TextAlign.center,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                      MediaQuery.sizeOf(context).height / 32.48),
                                                                  Padding(
                                                                    padding: EdgeInsets.symmetric(
                                                                        vertical: 0,
                                                                        horizontal: MediaQuery.sizeOf(context).width / 6.46),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                              height: MediaQuery.sizeOf(context).height/10.15,

                                                              width: MediaQuery.sizeOf(context).height/10.15,
                                                              decoration: BoxDecoration(
                                                                  color: ColorTheme.primaryWhite,
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      460),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                      10,
                                                                      spreadRadius:
                                                                      -10,
                                                                      color:
                                                                      ColorTheme.primaryBlack,
                                                                    )
                                                                  ]),
                                                              child: Padding(
                                                                padding:  EdgeInsets.all(MediaQuery.sizeOf(context).width/25),
                                                                child: CircularProgressIndicator(
                                                                  color: ColorTheme.primaryBlue,
                                                                  strokeWidth: 6,
                                                                ),
                                                              )),
                                                        ],
                                                      )),
                                                );
                                              });
                                          await Future.delayed(Duration(seconds: 3));
                                          showDialog(context: context, builder: (BuildContext context){

                                            return AlertDialog(
                                              backgroundColor: Colors.transparent,
                                              contentPadding: EdgeInsets.all(0),
                                              content: SizedBox(
                                                  height: MediaQuery.sizeOf(context).height / 3.3,
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
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                  "We couldn't proceed your payment. Please, try later.",
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
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(bottom: 32.0),
                                                                  child: ElevatedButton(
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                          fixedSize: Size(double.maxFinite, MediaQuery.sizeOf(context).height/20.3),
                                                                          backgroundColor:
                                                                          ColorTheme
                                                                              .primaryBlack),
                                                                      onPressed: () {
                                                                        Get.offAll(CartScreen());
                                                                      },
                                                                      child: Text(
                                                                        "Not Now",
                                                                        style: TextStyle(
                                                                            fontSize: 22,
                                                                            fontWeight:
                                                                            FontWeight.w300),
                                                                      )),
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

                                        },
                                        child: Container(
                                          height:
                                          MediaQuery.sizeOf(context)
                                              .height /
                                              5.24,
                                          width:
                                          MediaQuery.sizeOf(context)
                                              .width /
                                              1.34,
                                          decoration: BoxDecoration(
                                            color:
                                            ColorTheme.accentBluish,
                                            borderRadius:
                                            BorderRadius.circular(9),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                MediaQuery.sizeOf(context)
                                                    .height /
                                                    50.75),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                        height: MediaQuery
                                                            .sizeOf(
                                                            context)
                                                            .height /
                                                            23.89,
                                                        width: MediaQuery
                                                            .sizeOf(
                                                            context)
                                                            .width /
                                                            6.7,
                                                        LocalIcon
                                                            .masterCard),
                                                    IconButton(
                                                        style: IconButton.styleFrom(
                                                            backgroundColor: ColorTheme
                                                                .primaryWhite
                                                                .withAlpha(
                                                                100),
                                                            foregroundColor:
                                                            ColorTheme
                                                                .primaryBlue),
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons.settings,
                                                        ))
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: MediaQuery.sizeOf(
                                                          context)
                                                          .height /
                                                          24.60),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "* * * *",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      ),
                                                      Text(
                                                        "* * * *",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      ),
                                                      Text(
                                                        "* * * *",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      ),
                                                      Text(
                                                        "1579",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: MediaQuery.sizeOf(
                                                          context)
                                                          .height /
                                                          81.20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text("Card Holder"),
                                                      Text(
                                                          "${DateTime.now().month}/${DateTime.now().year}"),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          MediaQuery.sizeOf(context)
                                              .height /
                                              5.24,
                                          width:
                                          MediaQuery.sizeOf(context)
                                              .width /
                                              8.33,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  9),
                                              color:
                                              ColorTheme.primaryBlue),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color:
                                              ColorTheme.primaryWhite,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Pay",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.primaryWhite),
                  )),
            )
          ],
        ),
      ),
    );
  }
}