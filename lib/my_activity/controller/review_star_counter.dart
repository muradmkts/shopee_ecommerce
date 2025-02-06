import 'package:get/get.dart';

class ReviewStarCounter extends GetxController{
  int _totalStar = 0;
  int get totalStar => _totalStar;

  void addStar(int numberOfStar){
    _totalStar = numberOfStar;
    update();
  }
}