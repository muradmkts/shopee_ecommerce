import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shopee_ecommerce/cart/ui/cart_screen.dart';
import 'package:shopee_ecommerce/home/ui/home_screen.dart';

import 'package:shopee_ecommerce/profile/ui/profile_screen.dart';
import 'package:shopee_ecommerce/shared_controller/navbar_controller.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/nav_icon_path.dart';
import 'package:shopee_ecommerce/wishlist/ui/wishlist_screen.dart';

import '../my_activity/ui/my_activity_screen.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final List<Widget> screenList = [
    HomeScreen(),
    WishlistScreen(),
    MyActivity(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(
      builder: (controller) {
        return Scaffold(
          body: screenList[controller.navIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int i ){controller.navFunction(i);},
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(controller.navIndex==0? NavIconPath.homeMarked: NavIconPath.home), label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(controller.navIndex==1? NavIconPath.wishlistMarked : NavIconPath.wishlist), label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(controller.navIndex==2? NavIconPath.categoryMarked : NavIconPath.categories), label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(controller.navIndex==3? NavIconPath.cartMarked : NavIconPath.cart), label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(controller.navIndex==4? NavIconPath.profileMarked : NavIconPath.profile), label: ""),
            ],
          ),
        );
      }
    );
  }
}
