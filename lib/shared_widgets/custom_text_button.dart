import 'package:flutter/material.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.buttonLevel, required this.buttonAction});

  final String buttonLevel;
  final VoidCallback buttonAction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorTheme.secondaryGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
            side: BorderSide(color: ColorTheme.primaryBlue, width: 2),
          ),
        ),
        onPressed: buttonAction,
        child: Text(
          buttonLevel,
          style: TextStyle(color: ColorTheme.primaryBlue),
        ));

    /*TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 4),
          fixedSize: Size(90, 30),
          backgroundColor: ColorTheme.secondaryGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
            side: BorderSide(
              
              color: ColorTheme.primaryBlue,
              
            )
          )

        ),
        onPressed: buttonAction,
        child: Text(buttonLevel, style: TextStyle(fontSize: 16),)



    );*/
  }
}
