import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxGetBuilderMenu extends StatelessWidget {
  const ObxGetBuilderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Option Page I"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed("/obx/obx");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Obx",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.toNamed("/obx/getbuilder");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Get Builder",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.toNamed("/obx/sum");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Sum X + Y",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
