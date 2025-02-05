import 'package:flutter/material.dart';

import '../../shared_theme/utilities/color_theme.dart';

class AddACard extends StatelessWidget {
  const AddACard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        child: Text("Card"));
  }
}