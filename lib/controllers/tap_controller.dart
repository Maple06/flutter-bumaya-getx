import 'package:get/get.dart';

class TapController extends GetxController{
  RxInt _x = 0.obs;
  RxInt get x => _x;

  void increment() {
    _x.value++;
    update();
  }

  void decrement() {
    _x.value--;
    update();
  }
}