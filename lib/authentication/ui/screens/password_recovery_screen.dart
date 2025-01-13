import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';

import '../../../shared_theme/utilities/local_icon.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        background: LocalBackground.passBackground,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 5.143),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height / 23.2),
                  child: SvgPicture.asset(LocalIcon.cameraPhoto),
                ),
                Text(
                  "Setup New Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 27.06),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.2931,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Please, setup a new password for your account",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 35.30,
                      left: MediaQuery.sizeOf(context).width / 18.75,
                      right: MediaQuery.sizeOf(context).width / 18.75),
                  child: Column(
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "New Password",
                          hintStyle: TextStyle(
                            color: ColorTheme.primaryBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 81.2,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration:
                            InputDecoration(hintText: "Repeat Password"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 5.678,
                      left: MediaQuery.sizeOf(context).width / 18.75,
                      right: MediaQuery.sizeOf(context).width / 18.75),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(

                          content: Container(
                            height: MediaQuery.sizeOf(context).height/2,
                            width: MediaQuery.sizeOf(context).width,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: MediaQuery.sizeOf(context).height/3.60888,
                                  color: Colors.amber,
                                  child: Column(
                                    children: [
                                      Text("You reached out maximum amount of attempts. Please, try later.")
                                    ],
                                  ),
                                ),

                                SvgPicture.asset(LocalIcon.exclamatoryCircle),
                              ],
                            ),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Save",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("Cancel"))
              ],
            ),
          ),
        ));
  }
}
