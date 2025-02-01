import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shopee_ecommerce/payment_checkout/ui/payment_checkout_screen.dart';
import 'package:shopee_ecommerce/shared_controller/counter_controller.dart';
import 'package:shopee_ecommerce/shared_widgets/counter.dart';
import 'package:get/get.dart';
import '../../shared_theme/utilities/color_theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Cart",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: ColorTheme.primaryBlack),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CircleAvatar(
                  backgroundColor: ColorTheme.accentBluish,
                  radius: 15,
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: ColorTheme.primaryBlack),
                  ),
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width / 18.75,
                      vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _shippingAddress(context),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                7.38,
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                2.88,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: ColorTheme.primaryWhite,
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 5),
                                                blurRadius: 10,
                                                spreadRadius: 0,
                                                color: ColorTheme.primaryBlack
                                                    .withOpacity(.1),
                                              )
                                            ])),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width /
                                          3.125,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              7.96,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/product_images/image${index + 22}.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                        bottom: 15,
                                        left: 15,
                                        child: SvgPicture.asset(
                                            "assets/shopee_icons/delete_icon.svg"))
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.sizeOf(context).width /
                                          26.79),
                                  child: SizedBox(
                                    height: MediaQuery.sizeOf(context).height /
                                        7.38,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        2.7,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet consectetur.",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )),
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height /
                                                  162.4,
                                            ),
                                            Text("Pink, Size M"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$${433.00 * index + 323 - 1}",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width /
                                                  50,
                                            ),
                                            GetBuilder<CounterController>(
                                              builder: (controller) {
                                                return Counter(add: controller.increaseNumber, subtrack: controller.decreaseNumber, i: controller.itemCount);
                                              }
                                            )

                                            /*GetBuilder<CounterController>(
                                                builder: (controller) {
                                              return Counter(
                                                add: controller.increaseNumber,
                                                subtrack:
                                                    controller.decreaseNumber,
                                                i: controller.itemCount,
                                              );
                                            }),*/
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text("From Your Wishlist",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w800)),
                      ),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                7.38,
                                            width: MediaQuery.sizeOf(context)
                                                    .width /
                                                2.88,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                color: ColorTheme.primaryWhite,
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(0, 5),
                                                    blurRadius: 10,
                                                    spreadRadius: 0,
                                                    color: ColorTheme
                                                        .primaryBlack
                                                        .withOpacity(.1),
                                                  )
                                                ])),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  3.125,
                                          height: MediaQuery.sizeOf(context)
                                                  .height /
                                              7.96,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/product_images/image${index + 10}.jpg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Positioned(
                                            bottom: 15,
                                            left: 15,
                                            child: SvgPicture.asset(
                                                "assets/shopee_icons/delete_icon.svg"))
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              MediaQuery.sizeOf(context).width /
                                                  26.79),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                7.38,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        2.7,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet consectetur.",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )),
                                            Text(
                                              "\$${433.00 * index + 323 - 1}",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          32.48,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          6.95,
                                                  child: Center(
                                                      child: Text("Pink")),
                                                  decoration: BoxDecoration(
                                                      color: ColorTheme
                                                          .accentBluish,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          32.48,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          6.95,
                                                  child:
                                                      Center(child: Text("M")),
                                                  decoration: BoxDecoration(
                                                      color: ColorTheme
                                                          .accentBluish,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SvgPicture.asset(
                                    "assets/shopee_icons/add_icon.svg")
                              ],
                            ),
                          );
                        },
                        itemCount: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 13.53,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: ColorTheme.secondaryGray.withOpacity(.5)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 18.75,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder<CounterController>(
                      builder: (controller) {
                        return RichText(
                          text: TextSpan(
                              text: "Total",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: ColorTheme.primaryBlack),
                              children: [
                                TextSpan(
                                  text: "  \$${322*controller.itemCount}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: ColorTheme.primaryBlack),
                                )
                              ]),
                        );
                      }
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      height: MediaQuery.sizeOf(context).height / 20.3,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(PaymentCheckoutScreen());
                          },
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: ColorTheme.primaryWhite),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Container _shippingAddress(BuildContext context) {
    return Container(
                      height: MediaQuery.sizeOf(context).height / 11.6,
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width / 1.6,
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
                                icon: Icon(Icons.edit)),
                          )
                        ],
                      ),
                    );
  }
}
