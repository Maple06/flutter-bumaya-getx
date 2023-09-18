import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/textfield_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxInt counter = 0.obs;
    return Scaffold(
      appBar: AppBar(title: Text("Increment Decrement")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: (){
                  counter.value++;
                },
                icon: Icon(Icons.add)
            ),
            Obx(() => Text("${counter}")),
            IconButton(
                onPressed: (){
                  counter.value--;
                },
                icon: Icon(Icons.remove)
            ),
          ],
        ),
      ),
    );
  }
}
