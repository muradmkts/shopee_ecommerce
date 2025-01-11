import 'package:country_code_picker_plus/country_code_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/authentication/ui/screens/otp_screen.dart';
import 'package:shopee_ecommerce/shared_widgets/background.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/color_theme.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_icon.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        background: LocalBackground.createAccountBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
            Padding(
              padding: const EdgeInsets.only(top: 112),
              child: SizedBox(
                  width: 197,
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: ColorTheme.primaryBlack),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 54),
              child: SvgPicture.asset(LocalIcon.cameraPhoto),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 54, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: ColorTheme.secondaryLightWhite,
                  hintText: "Email",
            
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: ColorTheme.secondaryLightWhite,
                  hintText: "Password",
                  suffixIcon: InkWell(
                    child: Icon(Icons.visibility_off)
                  )

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 54),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: ColorTheme.secondaryLightWhite,
                  hintText: "Your Number",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CountryCodePicker(
                      mode: CountryCodePickerMode.dialog,
                      onChanged: (country) {
                        print('Country code selected: ${country.code}');
                      },
                      initialSelection: 'BD',
                      showFlag: true,
                      showDropDownButton: true,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return OTPScreen();}));

            },
                child: Text("Done",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
            
            
            ),
            SizedBox(
              height: 72,
              width: double.maxFinite,
              child: Center(
                child: TextButton(onPressed: (){
                  Navigator.pop(context);

                },
                    child: Text("Cancel" , style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)


                ),
              ),
            )
            
                  ],
                ),
          ),
        ));
  }
}
