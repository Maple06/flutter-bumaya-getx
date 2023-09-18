import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldController extends GetxController {
  RxList names = [].obs;
  RxBool switchValue = false.obs;
  RxString switchTextValue = "Open".obs;

  TextEditingController controller = TextEditingController();

  void toggle() {
    switchValue.value = !switchValue.value;
    if (switchValue.value) {
      switchTextValue.value = "Open";
    } else {
      switchTextValue.value = "Closed";
    }
  }
}
