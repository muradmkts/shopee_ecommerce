import 'package:get/get.dart';

class NavbarController extends GetxController {
  int _navIndex = 0;

  int get navIndex => _navIndex;

  void navFunction(int index) {
    _navIndex = index;
    update();
  }
}
