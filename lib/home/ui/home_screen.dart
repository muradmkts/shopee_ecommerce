import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Shopee",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: ColorTheme.primaryBlack),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width / 19),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height / 22.55,
                  width: MediaQuery.sizeOf(context).width / 1.55,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: ColorTheme.secondaryGray),
                        suffixIcon: Icon(
                          Icons.camera_alt_outlined,
                          color: ColorTheme.primaryBlue,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).height / 81.2),
              child: CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/banners/slider_banner.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Big Sale",
                                style: TextStyle(
                                    fontSize: 29,
                                    fontWeight: FontWeight.w800,
                                    color: ColorTheme.primaryWhite),
                              ),
                              Text("Up to 50% Discount",
                                  style: TextStyle(
                                      color: ColorTheme.primaryWhite)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
                options: CarouselOptions(
                  aspectRatio: 2.5769,
                  viewportFraction: .9,
                  onPageChanged: (index, _) {},
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorTheme.primaryBlue,
                      borderRadius: BorderRadius.circular(30)),
                  height: 10,
                  width: 40,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorTheme.primaryBlue,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorTheme.primaryBlue,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorTheme.primaryBlue,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorTheme.primaryBlue,
                ),
              ],
            ),
            GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/banners/slider_banner.jpg"))
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
