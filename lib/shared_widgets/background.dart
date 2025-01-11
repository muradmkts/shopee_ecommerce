import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_ecommerce/shared_theme/utilities/local_background.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child, required this.background});

  final Widget child;
  final String background;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,//background image shift fix
        body: Stack(
      children: [
        SvgPicture.asset(
          background,
          fit: BoxFit.cover,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
        ),
        child,
      ],
    ));
  }
}
