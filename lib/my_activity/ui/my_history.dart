import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../settings_screen/ui/screens/settings.dart';
import '../../shared_theme/utilities/color_theme.dart';
import '../../shared_widgets/arrow_button.dart';
import '../controller/review_star_counter.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width / 26.8,
                right: MediaQuery.sizeOf(context).width / 26.8,
                top: MediaQuery.sizeOf(context).height / 12.3,
                bottom: MediaQuery.sizeOf(context).height / 82),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.sizeOf(context).width / 40,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height / 13.54,
                            width: MediaQuery.sizeOf(context).height / 13.54,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: ColorTheme.primaryWhite,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                    color:
                                        ColorTheme.primaryBlack.withOpacity(.1),
                                  )
                                ]),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height / 16.25,
                            width: MediaQuery.sizeOf(context).height / 16.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(666),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/product_images/image02.jpg"))),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "History",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.sizeOf(context).width / 80),
                      child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                              backgroundColor: ColorTheme.accentBluish,
                              foregroundColor: ColorTheme.primaryBlue),
                          icon: Icon(Icons.document_scanner_rounded)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.sizeOf(context).width / 80),
                      child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                              backgroundColor: ColorTheme.accentBluish,
                              foregroundColor: ColorTheme.primaryBlue),
                          icon: Icon(Icons.message)),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(Settings());
                        },
                        style: IconButton.styleFrom(
                            backgroundColor: ColorTheme.accentBluish,
                            foregroundColor: ColorTheme.primaryBlue),
                        icon: Icon(Icons.settings))
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height / 45.11,
                    left: MediaQuery.sizeOf(context).width / 18.75,
                    right: MediaQuery.sizeOf(context).width / 18.75),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: MediaQuery.sizeOf(context).height / 7.38,
                            width: MediaQuery.sizeOf(context).width / 2.88,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ColorTheme.primaryWhite,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                    color:
                                        ColorTheme.primaryBlack.withOpacity(.1),
                                  )
                                ])),
                        Container(
                          width: MediaQuery.sizeOf(context).width / 3.125,
                          height: MediaQuery.sizeOf(context).height / 7.96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/product_images/image${index + 10}.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 26.79),
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height / 7.38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: MediaQuery.sizeOf(context).width / 2.7,
                                child: Text(
                                  "Lorem ipsum dolor sit amet consectetur.",
                                  style: TextStyle(fontSize: 12),
                                )),
                            Text(
                              "Order #${(index + 1) * 98365}",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w800),
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height / 32.48,
                                  width: MediaQuery.sizeOf(context).width / 4,
                                  child: Center(child: Text("April, 06")),
                                  decoration: BoxDecoration(
                                      color: ColorTheme.secondaryGray
                                          .withAlpha(120),
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                2.22,
                                            width: double.maxFinite,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          18.75,
                                                  vertical:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          18.75),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height /
                                                        10.37,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height /
                                                                20.3,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height /
                                                                20.3,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        666),
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/product_images/image${index + 10}.jpg"))),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Lorem ipsum dolor sit amet consectetur."),
                                                            Text(
                                                              "Order #${(index + 1) * 98365}",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  GetBuilder<ReviewStarCounter>(
                                                    builder: (controller) {
                                                      return Row(
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {
                                                              controller.addStar(1);
                                                            },
                                                            icon: Icon(
                                                              controller.totalStar>0?Icons.star:Icons.star_border,
                                                              color: ColorTheme
                                                                  .secondaryOrange,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              controller.addStar(2);},
                                                            icon: Icon(
                                                              controller.totalStar>1?Icons.star:Icons.star_border,
                                                              color: ColorTheme
                                                                  .secondaryOrange,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              controller.addStar(3);},
                                                            icon: Icon(
                                                              controller.totalStar>2?Icons.star:Icons.star_border,
                                                              color: ColorTheme
                                                                  .secondaryOrange,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              controller.addStar(4);},
                                                            icon: Icon(
                                                              controller.totalStar>3?Icons.star:Icons.star_border,
                                                              color: ColorTheme
                                                                  .secondaryOrange,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              controller.addStar(5);},
                                                            icon: Icon(
                                                              controller.totalStar>4?Icons.star:Icons.star_border,
                                                              color: ColorTheme
                                                                  .secondaryOrange,
                                                              size: 35,
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                  ),
                                                  TextField(
                                                    maxLines: 3,
                                                    decoration: InputDecoration(
                                                        fillColor: ColorTheme.secondaryGray.withAlpha(100),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                              borderSide: BorderSide(width: 0,color: Colors.transparent),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            9)),
                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(width: 0, color: Colors.transparent),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            9))),
                                                  ),
                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          fixedSize: Size(
                                                              double.maxFinite,
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height /
                                                                  20.3)),
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Say it!",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                32.48,
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                4.3,
                                        decoration: BoxDecoration(
                                            color: ColorTheme.primaryBlue,
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                      ),
                                      Container(
                                        height:
                                            (MediaQuery.sizeOf(context).height /
                                                    32.48) -
                                                4,
                                        width:
                                            (MediaQuery.sizeOf(context).width /
                                                    4.3) -
                                                4,
                                        child: Center(child: Text("Review")),
                                        decoration: BoxDecoration(
                                            color: ColorTheme.primaryWhite,
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: 5,
          ))
        ],
      ),
    );
  }
}
