import 'package:flutter/material.dart';

import '../../../shared_theme/utilities/color_theme.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reviews", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),),),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width/25,),
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
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
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/product_images/image12.jpg"))),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Veronika", style: TextStyle(fontSize:20, fontWeight: FontWeight.w500),),
                    Row(
                      children: [
                        Icon(Icons.star, color: ColorTheme.secondaryOrange,),
                        Icon(Icons.star, color: ColorTheme.secondaryOrange,),
                        Icon(Icons.star, color: ColorTheme.secondaryOrange,),
                        Icon(Icons.star, color: ColorTheme.secondaryOrange,),
                        Icon(Icons.star_half, color: ColorTheme.secondaryOrange,),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height/8.6,
                      width: MediaQuery.sizeOf(context).width/1.36,
                      child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum"),
                    )
                  ],
                )
              ],
            ),
          );

        },
          itemCount: 22
        ),
      ),
    );
  }
}
