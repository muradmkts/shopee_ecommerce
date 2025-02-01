import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared_theme/utilities/color_theme.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen(
      {super.key, required this.image, required this.price});

  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height / 1.85,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: IconButton(onPressed: (){
                          Get.back();
                        }, icon: Icon(Icons.cancel, color: Colors.white,)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 18.75,
                        vertical: MediaQuery.sizeOf(context).height / 45.11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Text(
                              "Variations",
                              style:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
