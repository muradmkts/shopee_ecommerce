import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared_theme/utilities/local_icon.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress, child: SvgPicture.asset(LocalIcon.arrowButton));
  }
}
