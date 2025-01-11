import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';

import '../../../shared_theme/utilities/local_icon.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        background: LocalBackground.passBackground,
        child: Column(
          children: [
            Text(
              "Hello, Romina!!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800
              ),
            ),
            Text(
              "Hello, Romina!!",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            SizedBox(
              width: 213,
              child: PinCodeTextField(
                enableActiveFill: true,


                pinTheme: PinTheme(
                  borderRadius: BorderRadius.circular(10),
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: ColorTheme.secondaryGray,
                  inactiveColor: ColorTheme.accentBluish,
                  activeColor: ColorTheme.accentBluish,
                  selectedColor: ColorTheme.accentBluish,),
                backgroundColor: Colors.transparent,
                  appContext: context,
                  length: 4
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not you?",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 16,
                ),
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(LocalIcon.arrowButton)),
              ],
            ),
          ],
        ));
  }
}
