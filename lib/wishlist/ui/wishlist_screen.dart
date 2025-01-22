import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared_theme/utilities/color_theme.dart';
import '../../shared_widgets/arrow_button.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Wishlist",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: ColorTheme.primaryBlack),
        ),
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
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
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
                              color: ColorTheme.primaryBlack.withOpacity(.1),
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
          Expanded(
              child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height / 45.11,
                    left: MediaQuery.sizeOf(context).width / 18.75,
                    right: MediaQuery.sizeOf(context).width / 18.75),
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
                                height:
                                    MediaQuery.sizeOf(context).height / 7.38,
                                width: MediaQuery.sizeOf(context).width / 2.88,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
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
                              width: MediaQuery.sizeOf(context).width / 3.125,
                              height: MediaQuery.sizeOf(context).height / 7.96,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/product_images/image${index + 10}.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              bottom: 15,
                                left:15,
                                child: SvgPicture.asset("assets/shopee_icons/delete_icon.svg"))
                            
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width / 26.79),
                          child: SizedBox(
                            height:
                            MediaQuery.sizeOf(context).height / 7.38,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:MediaQuery.sizeOf(context).width / 2.7,
                                    child: Text("Lorem ipsum dolor sit amet consectetur.", style: TextStyle(fontSize: 12),)),
                                Text("\$${433.00*index+323-1}", style: TextStyle(fontSize:22, fontWeight: FontWeight.w800),),

                                Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.sizeOf(context).height/32.48,
                                      width: MediaQuery.sizeOf(context).width/6.95,
                                      child: Center(child: Text("Pink")),
                                      decoration: BoxDecoration(
                                        color: ColorTheme.accentBluish,
                                        borderRadius: BorderRadius.circular(4)

                                      ),

                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Container(
                                      height: MediaQuery.sizeOf(context).height/32.48,
                                      width: MediaQuery.sizeOf(context).width/6.95,
                                      child: Center(child: Text("M")),
                                      decoration: BoxDecoration(
                                          color: ColorTheme.accentBluish,
                                          borderRadius: BorderRadius.circular(4)

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
                    SvgPicture.asset("assets/shopee_icons/add_icon.svg")
                    
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
