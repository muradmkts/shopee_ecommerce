import 'package:flutter/material.dart';

import '../../shared_theme/utilities/color_theme.dart';
import '../../shared_widgets/arrow_button.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Wishlist",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: ColorTheme.primaryBlack),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  "Recently viewed",
                  style:
                  TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
                ArrowButton(onPress: () {})
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 11.6,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6),
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
          Expanded(child: ListView.builder(itemBuilder: (BuildContext context, int i){
            return Text("data");
          },
            itemCount: 666,
          ))
        ],
      ),
    );
  }
}
