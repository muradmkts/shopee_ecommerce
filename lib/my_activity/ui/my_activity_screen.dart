import 'package:flutter/material.dart';

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
          child: ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: ColorTheme.secondaryLightWhite,
            foregroundColor: ColorTheme.primaryBlue,
            elevation: 0,
            fixedSize: Size(double.maxFinite,40),

          ),onPressed: () {}, child: Text("April",style: TextStyle(fontSize: 16),)),
        )
      ],
    ));
  }
}
