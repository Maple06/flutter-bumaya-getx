import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxPage extends StatelessWidget {
  const ObxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxString nama = "***********".obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Obx"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => Text("$nama",
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20))),
                  ]),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                nama.value = "Malendra S Rizky";
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Show Name!",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
