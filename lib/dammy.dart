import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_icon.dart';
import 'package:shopee_ecommerce/shared_widgets/custom_text_button.dart';

class Dammy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(

            decoration: InputDecoration(

              hintText: "Enter Valid Email",
              labelText: "Email"


            ),


          ),
        ),

      )
    );
  }
}
