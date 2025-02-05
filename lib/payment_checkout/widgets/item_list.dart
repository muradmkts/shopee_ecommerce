import 'package:flutter/material.dart';

import '../../shared_theme/utilities/color_theme.dart';


class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}