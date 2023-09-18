import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smekdu_getx/controllers/sum_controller.dart';

class SavedSumPage extends StatelessWidget {
  const SavedSumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SumController sumController = Get.put(SumController());
    RxList listHasil = sumController.listHasil;
    return Scaffold(
      appBar:
          AppBar(title: const Text("Persamaan Tersimpan"), centerTitle: true),
      body: GetBuilder<SumController>(builder: (sumController) {
        return ListView.builder(
          itemCount: listHasil.length,
          itemBuilder: (context, index) {
            final item = listHasil[index];
            final x = item['x'];
            final y = item['y'];
            final sum = item['sum'];
            final shownIndex = index + 1;
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                  tileColor: Colors.blue,
                  leading: Text(
                    '$shownIndex.',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  title: Center(
                    child: Text(
                      '$x + $y = $sum',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            );
          },
        );
      }),
    );
  }
}
