import 'package:get/get.dart';

class RemoveWishlistItem extends GetxController{
  int _deleteItem = 5;
  int get deleteItem => _deleteItem;

  void delete (int index){

    _deleteItem--;
    update();

  }

}