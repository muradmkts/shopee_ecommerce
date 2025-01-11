import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/authentication/ui/screens/create_account.dart';
import 'package:shopee_ecommerce/authentication/ui/screens/login_screen.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_icon.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: SvgPicture.asset(LocalIcon.companyLogo),
          ),
          //logo
          //title
          Text(
            "Shoppe",
            style: TextStyle(fontSize: 52, fontWeight: FontWeight.w800),
          ),
          //title
          //subtitle
          Padding(
            padding: const EdgeInsets.only(bottom: 106, left: 90, right: 90),
            child: Text(
              "Beautiful eCommerce UI Kit for your online store",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          //subtitle
          //buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return CreateAccount();
                      }));

                },
                child: Text(
                  "Let's get started",
                  style: TextStyle(fontSize: 22),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I already have an account",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 16,
                ),
                InkWell(
                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));

                    },
                    child: SvgPicture.asset(LocalIcon.arrowButton)),
              ],
            ),
          )
          //buttons
        ],
      ),
    );
  }
}
