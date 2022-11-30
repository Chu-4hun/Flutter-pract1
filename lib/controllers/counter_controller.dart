import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxList<String> history = List<String>.empty().obs;
  increment() {
    count++;
    history.add('Incremented 1  At time - ' + DateTime.now().toString());
  }

  decrement() {
    count--;
    history.add('Dectrmented 1  At time - ' + DateTime.now().toString());
  }
}
