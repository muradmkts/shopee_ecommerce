import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/review/ui/screens/reviews.dart';
import 'package:shopee_ecommerce/settings_screen/ui/screens/settings.dart';
import 'package:get/get.dart';
import '../../shared_theme/utilities/color_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery
                        .sizeOf(context)
                        .width / 26.8,
                    right: MediaQuery
                        .sizeOf(context)
                        .width / 26.8,
                    top: MediaQuery
                        .sizeOf(context)
                        .height / 12.3,
                    bottom: MediaQuery
                        .sizeOf(context)
                        .height / 82),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery
                                .sizeOf(context)
                                .width / 62.6,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: MediaQuery
                                    .sizeOf(context)
                                    .height / 13.54,
                                width: MediaQuery
                                    .sizeOf(context)
                                    .height / 13.54,
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
                                height: MediaQuery
                                    .sizeOf(context)
                                    .height / 16.25,
                                width: MediaQuery
                                    .sizeOf(context)
                                    .height / 16.25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(666),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/product_images/image02.jpg"))),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                    MediaQuery
                                        .sizeOf(context)
                                        .width / 3.26,
                                    MediaQuery
                                        .sizeOf(context)
                                        .height / 23.2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                )),
                            child: Text(
                              "My Activity",
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery
                                  .sizeOf(context)
                                  .width / 80),
                          child: IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                  backgroundColor: ColorTheme.accentBluish,
                                  foregroundColor: ColorTheme.primaryBlue),
                              icon: Icon(Icons.document_scanner_rounded)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery
                                  .sizeOf(context)
                                  .width / 80),
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
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery
                      .sizeOf(context)
                      .width / 26.8,
                  right: MediaQuery
                      .sizeOf(context)
                      .width / 26.8,
                ),
                child: Container(
                  height: MediaQuery
                      .sizeOf(context)
                      .height / 11.6,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorTheme.secondaryLightWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "Shipping Address",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery
                                  .sizeOf(context)
                                  .width / 1.6,
                              child: Text(
                                "26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: ColorTheme.primaryBlue,
                                foregroundColor: ColorTheme.primaryWhite),
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    right: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    top: MediaQuery
                        .sizeOf(context)
                        .height / 54.13),
                child: Text(
                  "Recently Viewed",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .sizeOf(context)
                    .height / 11.6,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: MediaQuery
                                .sizeOf(context)
                                .height / 13.54,
                            width: MediaQuery
                                .sizeOf(context)
                                .height / 13.54,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color: ColorTheme.primaryBlack.withOpacity(
                                      .1),
                                )
                              ],
                              color: ColorTheme.primaryWhite,
                              borderRadius: BorderRadius.circular(500),
                            ),
                          ),
                          Container(
                            height: MediaQuery
                                .sizeOf(context)
                                .height / 16.25,
                            width: MediaQuery
                                .sizeOf(context)
                                .height / 16.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(666),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/product_images/image${index +
                                            10}.jpg"))),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    right: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    top: MediaQuery
                        .sizeOf(context)
                        .height / 30.13,
                    bottom: MediaQuery
                        .sizeOf(context)
                        .height / 67.7
                ),
                child: Text(
                  "My Order",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery
                      .sizeOf(context)
                      .width / 20.75,
                  right: MediaQuery
                      .sizeOf(context)
                      .width / 18.75,
                ),
                child: SizedBox(
                  height: MediaQuery
                      .sizeOf(context)
                      .height / 23.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorTheme.accentBluish,
                              foregroundColor: ColorTheme.primaryBlue,
                              fixedSize: Size(MediaQuery
                                  .sizeOf(context)
                                  .width / 4.36,
                                  MediaQuery
                                      .sizeOf(context)
                                      .height / 23.2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                          child: Text(
                            "To Pay",
                            style: TextStyle(fontSize: 16),
                          )),
                      SizedBox(width: 8),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorTheme.accentBluish,
                              foregroundColor: ColorTheme.primaryBlue,
                              fixedSize: Size(MediaQuery
                                  .sizeOf(context)
                                  .width / 3.26,
                                  MediaQuery
                                      .sizeOf(context)
                                      .height / 23.2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                          child: Text(
                            "To Receive",
                            style: TextStyle(fontSize: 16),
                          )),
                      SizedBox(width: 8),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(Reviews());
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorTheme.accentBluish,
                              foregroundColor: ColorTheme.primaryBlue,
                              fixedSize: Size(MediaQuery
                                  .sizeOf(context)
                                  .width / 3.26,
                                  MediaQuery
                                      .sizeOf(context)
                                      .height / 23.2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                          child: Text(
                            "To Review",
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    right: MediaQuery
                        .sizeOf(context)
                        .width / 18.75,
                    top: MediaQuery
                        .sizeOf(context)
                        .height / 20.13,
                    bottom: MediaQuery
                        .sizeOf(context)
                        .height / 67.7
                ),
                child: Text(
                  "Stories",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
              ),

              Padding(
                padding:EdgeInsets.only(left:MediaQuery.sizeOf(context).width/18.75),
                child: SizedBox(
                  height: MediaQuery
                      .sizeOf(context)
                      .height / 4,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left:MediaQuery.sizeOf(context).width/62.5),
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height/4.64,
                            width: MediaQuery.sizeOf(context).width/3.61,
                            decoration:BoxDecoration(
                              image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1596462502278-27bfdc403348?q=80&w=2500&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(9),

                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color: ColorTheme.primaryBlack.withOpacity(
                                      .1),

                                )

                              ]

                            ),
                          ),
                          SizedBox(

                              height: MediaQuery.sizeOf(context).height/4.64,
                              width: MediaQuery.sizeOf(context).width/3.61,
                              child: Center(child: Container(
                                  height: MediaQuery.sizeOf(context).width/12.93,
                                  width: MediaQuery.sizeOf(context).width/12.93,
                        decoration:BoxDecoration(
                          color: ColorTheme.primaryWhite.withAlpha(127),
                          borderRadius: BorderRadius.circular(360)

                        ),
                                  child: Icon(Icons.play_arrow_rounded, color: Colors.white,)))),
                          Padding(
                            padding:  EdgeInsets.all(MediaQuery.sizeOf(context).width/93.75),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height/40.6,
                              width: MediaQuery.sizeOf(context).width/9.14,
                              decoration: BoxDecoration(
                              color: ColorTheme.accentGreen,
                                borderRadius: BorderRadius.circular(7)

                                                    ),
                              child: Center(child: Text("Live", style: TextStyle(color: ColorTheme.primaryWhite),)),


                            ),
                          )
                        ],
                      ),
                    );
                  }),

                ),
              )
            ],
          ),
        ));
  }
}
