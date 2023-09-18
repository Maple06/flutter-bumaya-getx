import 'package:get/get.dart';

class SumController extends GetxController{
  final RxInt _x = 0.obs;
  RxInt get x => _x;
  final RxInt _y = 0.obs;
  RxInt get y => _y;
  final RxInt _sum = 0.obs;
  RxInt get sum => _sum;

  RxList listHasil = [].obs;

  RxString pesan = "".obs;

  void incrementX() {
    _x.value++;
    update();
  }

  void decrementX() {
    _x.value--;
    update();
  }

  void incrementY() {
    _y.value++;
    update();
  }

  void decrementY() {
    _y.value--;
    update();
  }

  void hasil() {
    sum.value = _x.value + _y.value;
    update();
  }

  void simpan() {
    sum.value = _x.value + _y.value;
    update();
    listHasil.add({"x": _x.value, "y": _y.value, "sum": sum.value});
    print(listHasil);
  }

  void pesanSimpan() {
    pesan.value = "Persamaan ${_x.value} + ${_y.value} = ${sum.value} tersimpan!";
  }
}