import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/home/ui/utilitites/product_images.dart';
import 'package:shopee_ecommerce/product_descriptions/ui/product_description_screen.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';
import 'package:shopee_ecommerce/shared_widgets/arrow_button.dart';
import 'package:get/get.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width / 23.438,
                    right: MediaQuery.sizeOf(context).width / 23.438,
                    bottom: MediaQuery.sizeOf(context).height / 54.13,
                    top: MediaQuery.sizeOf(context).height / 54.13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text("See All",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800)),
                        SizedBox(
                            width: MediaQuery.sizeOf(context).width / 28.84),
                        ArrowButton(onPress: () {})
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).height / 135.33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height / 4.23,
                      width: MediaQuery.sizeOf(context).width / 2.27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: ColorTheme.primaryBlack.withOpacity(.1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage01),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage02),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage03),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage04),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 129,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                  Text("Clothing"),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.sizeOf(context).height /
                                        40.9,
                                    width: MediaQuery.sizeOf(context).width /
                                        9.8684,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: ColorTheme.accentBluish),
                                    child: Center(
                                        child: Text(
                                      "109",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height / 4.23,
                      width: MediaQuery.sizeOf(context).width / 2.27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: ColorTheme.primaryBlack.withOpacity(.1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage01),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage02),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage03),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage04),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 129,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                  Text("Clothing"),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.sizeOf(context).height /
                                        40.9,
                                    width: MediaQuery.sizeOf(context).width /
                                        9.8684,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: ColorTheme.accentBluish),
                                    child: Center(
                                        child: Text(
                                      "109",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 4.23,
                    width: MediaQuery.sizeOf(context).width / 2.27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: ColorTheme.primaryBlack.withOpacity(.1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage01),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage02),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage03),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage04),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 129,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).height / 129,
                                ),
                                Text("Clothing"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height / 40.9,
                                  width:
                                      MediaQuery.sizeOf(context).width / 9.8684,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ColorTheme.accentBluish),
                                  child: Center(
                                      child: Text(
                                    "109",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).height / 129,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 4.23,
                    width: MediaQuery.sizeOf(context).width / 2.27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: ColorTheme.primaryBlack.withOpacity(.1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage01),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage02),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage03),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height:
                                  MediaQuery.sizeOf(context).height / 10.827,
                              width: MediaQuery.sizeOf(context).height / 10.827,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ProductImages.productImage04),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 129,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).height / 129,
                                ),
                                Text("Clothing"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height / 40.9,
                                  width:
                                      MediaQuery.sizeOf(context).width / 9.8684,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ColorTheme.accentBluish),
                                  child: Center(
                                      child: Text(
                                    "109",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).height / 129,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).height / 135.33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height / 4.23,
                      width: MediaQuery.sizeOf(context).width / 2.27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: ColorTheme.primaryBlack.withOpacity(.1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage01),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage02),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage03),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage04),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 129,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                  Text("Clothing"),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.sizeOf(context).height /
                                        40.9,
                                    width: MediaQuery.sizeOf(context).width /
                                        9.8684,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: ColorTheme.accentBluish),
                                    child: Center(
                                        child: Text(
                                      "109",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height / 4.23,
                      width: MediaQuery.sizeOf(context).width / 2.27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: ColorTheme.primaryBlack.withOpacity(.1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage01),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage02),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage03),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                width:
                                    MediaQuery.sizeOf(context).height / 10.827,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ProductImages.productImage04),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 129,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                  Text("Clothing"),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.sizeOf(context).height /
                                        40.9,
                                    width: MediaQuery.sizeOf(context).width /
                                        9.8684,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: ColorTheme.accentBluish),
                                    child: Center(
                                        child: Text(
                                      "109",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).height / 129,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width / 18.75,
                    vertical: MediaQuery.sizeOf(context).height / 54.13),
                child: Text(
                  "Top Products",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 11.6,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height / 13.54,
                            width: MediaQuery.sizeOf(context).height / 13.54,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color:
                                      ColorTheme.primaryBlack.withOpacity(.1),
                                )
                              ],
                              color: ColorTheme.primaryWhite,
                              borderRadius: BorderRadius.circular(500),
                            ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height / 16.25,
                            width: MediaQuery.sizeOf(context).height / 16.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(666),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/product_images/image${index + 10}.jpg"))),
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
                    left: MediaQuery.sizeOf(context).width / 23.438,
                    right: MediaQuery.sizeOf(context).width / 23.438,
                    bottom: MediaQuery.sizeOf(context).height / 54.13,
                    top: MediaQuery.sizeOf(context).height / 54.13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Items",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text("See All",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800)),
                        SizedBox(
                            width: MediaQuery.sizeOf(context).width / 28.84),
                        ArrowButton(onPress: () {})
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 3.78,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap:(){
                              Get.to(ProductDescriptionScreen(image: "assets/product_images/image${index + 10}.jpg", price: "\$${index + 200}"));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.sizeOf(context).height / 5.8,
                                  width: MediaQuery.sizeOf(context).height / 5.8,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 5),
                                        blurRadius: 10,
                                        spreadRadius: 0,
                                        color: ColorTheme.primaryBlack
                                            .withOpacity(.1),
                                      )
                                    ],
                                    color: ColorTheme.primaryWhite,
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height / 6.25,
                                  width: MediaQuery.sizeOf(context).height / 6.25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/product_images/image${index + 10}.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height / 22.56,
                              width: MediaQuery.sizeOf(context).height / 6.25,
                              child: Center(
                                  child: Text(
                                      "High quality bags for girls under teen age"))),
                          Text(
                              "\$${index + 200}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),)
                        ],
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ));
  }
}
