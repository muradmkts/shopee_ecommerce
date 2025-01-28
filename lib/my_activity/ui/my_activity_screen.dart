import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gauge_chart/gauge_chart.dart';

import '../../shared_theme/utilities/color_theme.dart';

class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                      right: MediaQuery.sizeOf(context).width / 62.6,
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
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.sizeOf(context).width / 3.26,
                              MediaQuery.sizeOf(context).height / 23.2),
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
                      onPressed: () {},
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
              left: MediaQuery.sizeOf(context).width / 26.8,
              right: MediaQuery.sizeOf(context).width / 26.8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorTheme.secondaryLightWhite,
                foregroundColor: ColorTheme.primaryBlue,
                elevation: 0,
                fixedSize: Size(double.maxFinite, 40),
              ),
              onPressed: () {},
              child: Text(
                "April",
                style: TextStyle(fontSize: 16),
              )),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 54.13),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).width / 1.54,
                width: MediaQuery.sizeOf(context).width / 1.54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: ColorTheme.secondaryGray,
                          offset: Offset(0, 3),
                          blurRadius: 8,
                          spreadRadius: 0)
                    ]),
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height / 3.35,
                  width: MediaQuery.sizeOf(context).width / 1.13,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 4.68),
                    child: GaugeChart(
                      showValue: false,
                      children: [
                        PieData(
                            value: 183,
                            color: ColorTheme.accentGreen,
                            description: "Clothing"),
                        PieData(
                            value: 300,
                            color: ColorTheme.primaryBlue,
                            description: "Cosmetics"),
                        PieData(
                            value: 250,
                            color: ColorTheme.secondaryPink,
                            description: "Shoes"),
                        PieData(
                            value: 400,
                            color: ColorTheme.secondaryOrange,
                            description: "Bags"),
                      ],
                      gap: 0,
                      borderWidth: 35,
                    ),
                  )),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    Text("\$700",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600))
                  ],
                ),
                height: MediaQuery.sizeOf(context).height / 7.8,
                width: MediaQuery.sizeOf(context).height / 7.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: ColorTheme.secondaryGray,
                          offset: Offset(0, 3),
                          blurRadius: 8,
                          spreadRadius: 0)
                    ]),
              ),
            ],
          ),
        ),
        Wrap(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorTheme.accentGreen,
                    foregroundColor: ColorTheme.primaryWhite,
                    fixedSize: Size(MediaQuery
                        .sizeOf(context)
                        .width / 2.67,
                        MediaQuery
                            .sizeOf(context)
                            .height / 23.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "Clothing \$183",
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorTheme.primaryBlue,
                    foregroundColor: ColorTheme.primaryWhite,
                    fixedSize: Size(MediaQuery
                        .sizeOf(context)
                        .width / 2.67,
                        MediaQuery
                            .sizeOf(context)
                            .height / 23.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "Cosmetics \$300",
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorTheme.secondaryPink,
                    foregroundColor: ColorTheme.primaryWhite,
                    fixedSize: Size(MediaQuery
                        .sizeOf(context)
                        .width / 2.67,
                        MediaQuery
                            .sizeOf(context)
                            .height / 23.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "Shoes \$250",
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorTheme.secondaryOrange,
                    foregroundColor: ColorTheme.primaryWhite,
                    fixedSize: Size(MediaQuery
                        .sizeOf(context)
                        .width / 2.67,
                        MediaQuery
                            .sizeOf(context)
                            .height / 23.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "Bag \$400",
                  style: TextStyle(fontSize: 16),
                )),
          ],
        ),


      ],

    ));
  }
}
