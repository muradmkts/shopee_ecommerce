import 'package:get/get.dart';

class CounterController extends GetxController {
  int _itemCount = 1;

  int get itemCount => _itemCount;

  void increaseNumber() {
    _itemCount++;
    update();
  }

  void decreaseNumber() {
    if (_itemCount == 1) {
      return;
    }
    _itemCount--;
    update();
  }
}
