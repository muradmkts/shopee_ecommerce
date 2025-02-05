import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared_theme/utilities/color_theme.dart';
import '../../shared_theme/utilities/local_icon.dart';

class StandardShippingOption extends StatelessWidget {
  const StandardShippingOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        ));
  }
}