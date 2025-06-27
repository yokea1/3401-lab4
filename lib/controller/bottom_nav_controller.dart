// Controller because we are going to use GetX

import 'package:get/get.dart';

// business logic
class BottomNavController extends GetxController {
  // This makes it REACTIVE(will reflet on the UI)
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
