import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/nav_icon_path.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(NavIconPath.home), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(NavIconPath.wishlist), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(NavIconPath.categories), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(NavIconPath.cart), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(NavIconPath.profile), label: ""),
        ],
      ),
    );
  }
}
