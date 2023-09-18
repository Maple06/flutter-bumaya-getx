import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final names = Get.arguments();
    return Scaffold(
        appBar: AppBar(title: const Text("Text Field Save"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SafeArea(
            child: ListView(
              children: [
                for (var name in names)
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(name),
                  )
              ],
            ),
          ),
        ));
  }
}
