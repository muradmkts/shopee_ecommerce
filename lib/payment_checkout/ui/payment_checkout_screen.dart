import 'package:flutter/material.dart';
import '../../shared_theme/utilities/color_theme.dart';
import '../widgets/add_cart.dart';
import '../widgets/item_list.dart';
import '../widgets/make_payment.dart';
import '../widgets/premium_shipping_option.dart';
import '../widgets/standard_shipping_option.dart';

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
                        ItemList(),
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
                        StandardShippingOption(),
                        SizedBox(height: 8),
                        PremiumShippingOption(),
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
                        AddACard()
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          MakePayment()
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
