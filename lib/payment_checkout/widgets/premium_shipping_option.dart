import 'package:flutter/material.dart';

import '../../shared_theme/utilities/color_theme.dart';

class PremiumShippingOption extends StatelessWidget {
  const PremiumShippingOption({
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
        ));
  }
}