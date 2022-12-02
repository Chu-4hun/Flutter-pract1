import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxList<String> history = List<String>.empty().obs;
  increment() {
    Get.isDarkMode ? count + 2 : count++;
    history.add('Incremented  At time - ' + DateTime.now().toString());
  }

  decrement() {
    Get.isDarkMode ? count - 2 : count--;
    history.add('Dectrmented  At time - ' + DateTime.now().toString());
  }
}
