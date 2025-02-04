import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_icon.dart';

import '../../shared_theme/utilities/color_theme.dart';

class PaymentCheckoutScreen extends StatelessWidget {
  const PaymentCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: ColorTheme.primaryBlack),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 18.75),
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _shippingAddress(context),
                        SizedBox(height: 8),
                        _billingInfo(context),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.sizeOf(context).height / 40.75),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Items",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800,
                                        color: ColorTheme.primaryBlack),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: ColorTheme.accentBluish,
                                      radius: 15,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: ColorTheme.primaryBlack),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                          MediaQuery.sizeOf(context).width /
                                              2.90,
                                          MediaQuery.sizeOf(context).width /
                                              27.066)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("5% Discount"),
                                      Icon(Icons.cancel_outlined)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.sizeOf(context).height / 40.75),
                          child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height /
                                                        13.54,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .height /
                                                        13.54,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        color: ColorTheme
                                                            .primaryWhite,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset:
                                                                Offset(0, 5),
                                                            blurRadius: 10,
                                                            spreadRadius: 0,
                                                            color: ColorTheme
                                                                .primaryBlack
                                                                .withOpacity(
                                                                    .1),
                                                          )
                                                        ]),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height /
                                                        16.25,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .height /
                                                        16.25,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(666),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/product_images/image${index + 10}.jpg"))),
                                                  ),
                                                ],
                                              ),
                                              CircleAvatar(
                                                backgroundColor:
                                                    ColorTheme.accentBluish,
                                                radius: 15,
                                                child: Text(
                                                  "${index + 1}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: ColorTheme
                                                          .primaryBlack),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width /
                                                  1.91,
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet consectetur."),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "\$${17.12 * (index + 1)}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Shipping Options",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: ColorTheme.primaryBlack),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorTheme.accentBluish,
                                elevation: 0),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(LocalIcon.checkMark),
                                    SizedBox(width: 8),
                                    Text(
                                      "Standard",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorTheme.primaryBlack),
                                    ),
                                    SizedBox(width: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorTheme.primaryWhite),
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              31.23,
                                      width: MediaQuery.sizeOf(context).width /
                                          5.50,
                                      child: Text("5-7 days",
                                          style: TextStyle(
                                              color: ColorTheme.primaryBlue)),
                                    )
                                  ],
                                ),
                                Text(
                                  "FREE",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.primaryBlack),
                                )
                              ],
                            )),
                        SizedBox(height: 8),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorTheme.accentBluish,
                                elevation: 0),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_outlined,
                                      size: 27,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Premium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorTheme.primaryBlack),
                                    ),
                                    SizedBox(width: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorTheme.primaryWhite),
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              31.23,
                                      width: MediaQuery.sizeOf(context).width /
                                          5.50,
                                      child: Text("1-2 days",
                                          style: TextStyle(
                                              color: ColorTheme.primaryBlue)),
                                    )
                                  ],
                                ),
                                Text(
                                  "\$12.45",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.primaryBlack),
                                )
                              ],
                            )),
                        SizedBox(height: 4),
                        Text("Delivered on or before Thursday, 23 April 2020"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 8.0),
                              child: Text(
                                "Payment Method",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: ColorTheme.primaryBlack),
                              ),
                            ),
                            IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: ColorTheme.primaryBlue,
                                    foregroundColor: ColorTheme.primaryWhite),
                                onPressed: () {},
                                icon: Icon(Icons.edit)),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: ColorTheme.primaryBlue,
                                backgroundColor: ColorTheme.accentBluish,
                                fixedSize: Size(
                                    MediaQuery.sizeOf(context).width / 3.90,
                                    MediaQuery.sizeOf(context).width / 27.066)),
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: ColorTheme.accentBluish,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              2.11,
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
                                                  bottom:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          20.92),
                                              child: Text(
                                                "Add Card",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorTheme
                                                        .primaryBlack),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          203),
                                              child: Text(
                                                "Card Holder",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorTheme
                                                        .primaryBlack),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          47.76),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2,
                                                            horizontal: 16),
                                                    hintText: "Required",
                                                    hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ColorTheme
                                                            .secondaryGray),
                                                    constraints: BoxConstraints(
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height /
                                                                21.95)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          203),
                                              child: Text(
                                                "Card Number",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorTheme
                                                        .primaryBlack),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom:
                                                      MediaQuery.sizeOf(context)
                                                              .height /
                                                          47.76),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2,
                                                            horizontal: 16),
                                                    hintText: "Required",
                                                    hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ColorTheme
                                                            .secondaryGray),
                                                    constraints: BoxConstraints(
                                                        maxHeight:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height /
                                                                21.95)),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          2.27,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Valid"),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              bottom: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height /
                                                                  47.76),
                                                          child: TextField(
                                                            decoration: InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            2,
                                                                        horizontal:
                                                                            16),
                                                                hintText:
                                                                    "Required",
                                                                hintStyle: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: ColorTheme
                                                                        .secondaryGray),
                                                                constraints: BoxConstraints(
                                                                    maxHeight: MediaQuery.sizeOf(context)
                                                                            .height /
                                                                        21.95)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          2.27,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("CVC"),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height /
                                                                47.76),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      vertical:
                                                                          2,
                                                                      horizontal:
                                                                          16),
                                                              hintText:
                                                                  "Required",
                                                              hintStyle: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: ColorTheme
                                                                      .secondaryGray),
                                                              constraints: BoxConstraints(
                                                                  maxHeight: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height /
                                                                      21.95)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
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
                                                child: Text("Save Changes"))
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Text("Card"))
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
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
                                              onTap: () {
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
          )
        ],
      ),
    );
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.6,
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

  Container _billingInfo(BuildContext context) {
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
                    "Contact Information",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.6,
                  child: Text(
                    "+8801734590303\n gmail@yahoo.com",
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
          ),
        ],
      ),
    );
  }
}
