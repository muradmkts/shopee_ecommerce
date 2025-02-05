import 'package:flutter/material.dart';

import '../../../shared_theme/utilities/color_theme.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:MediaQuery.sizeOf(context).width/18.75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/25, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                    highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Address",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Methods",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height/26.2),
                child: Text(
                  "Shop",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/25, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text("Vietnam"),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios, size: 16,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Currency",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sizes",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms and conditions",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height/26.2),
                child: Text(
                  "Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/25, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text("English"),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios, size: 16,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/39, bottom: MediaQuery.sizeOf(context).width/18.75),
                child: InkWell(
                  highlightColor: ColorTheme.accentBluish,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About Damkhoto",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                width: double.maxFinite,
                child: ColoredBox(color: ColorTheme.secondaryGray.withAlpha(100)),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height/25,),
              child: Text("Delete My Account", style: TextStyle(color: Colors.red),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
