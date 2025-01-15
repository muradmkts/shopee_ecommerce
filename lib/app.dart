import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shopee_ecommerce/authentication/ui/screens/start_screen.dart';
import 'package:shopee_ecommerce/controller_bindings.dart';

import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      title: "Shopee",
      theme: ThemeData(

        //TextFiled Theme
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16) ,
          filled: true,
          fillColor: ColorTheme.secondaryLightWhite,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(60),

          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(60),



            )


        ),



        //elevated button theme
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
        backgroundColor: ColorTheme.primaryBlue,
        foregroundColor: ColorTheme.primaryWhite,
        iconColor: ColorTheme.primaryWhite,
        fixedSize: Size(double.maxFinite, 61),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        //padding: EdgeInsets.symmetric(vertical: 16),
      ))),
      home: StartScreen(),
    );
  }
}
