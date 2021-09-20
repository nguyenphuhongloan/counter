import 'package:get/get.dart';

class Increament extends GetxController {
  var number = 0.obs;
  increament() => number++;
  void reset() {
    number.value = 0;
  }
  decrement() => number--;
  show() => number;
}
