import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';

import '../../../shared_theme/utilities/color_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: ColorTheme.primaryBlack)),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Text(
                    "Good to see you back!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Icon(Icons.heart_broken),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Next", style: TextStyle(fontSize: 22))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: SizedBox(
                  height: 72,
                  width: double.maxFinite,
                  child: Center(
                    child: InkWell(
                      onTap: (){Navigator.pop(context);},
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
      background: LocalBackground.loginBackground,
    );
  }
}
