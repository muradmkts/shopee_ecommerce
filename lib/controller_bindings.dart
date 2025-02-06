import 'package:get/get.dart';
import 'package:shopee_ecommerce/cart/controller/remove_wishlist_item.dart';
import 'package:shopee_ecommerce/shared_controller/counter_controller.dart';
import 'package:shopee_ecommerce/shared_controller/navbar_controller.dart';

import 'my_activity/controller/review_star_counter.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NavbarController());
    Get.lazyPut(() => CounterController(), fenix: true);
    Get.lazyPut(() => RemoveWishlistItem(), fenix: true);
    Get.lazyPut(()=>ReviewStarCounter(), fenix: true);
  }
}
