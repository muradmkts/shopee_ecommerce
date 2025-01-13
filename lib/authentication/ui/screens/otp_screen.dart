import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopee_ecommerce/authentication/ui/screens/password_recovery_screen.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height/5.143),
            child: Column(
              children: [

                Padding(
                  padding:  EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height/23.2),
                  child: SvgPicture.asset(LocalIcon.cameraPhoto),
                ),
                Text(
                  "Hello, Romina!!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height/27.06),
                  child: Text(
                    "Type your OTP",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/35.30),
                  child: SizedBox(
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
                          selectedColor: ColorTheme.accentBluish,
                        ),
                        backgroundColor: Colors.transparent,
                        appContext: context,
                        length: 4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/3.17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Reset your password?",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){return PasswordRecoveryScreen();},));
                          },
                          child: SvgPicture.asset(LocalIcon.arrowButton)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
