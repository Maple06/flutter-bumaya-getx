import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'obx/obx.dart';
import 'obx/getbuilder.dart';
import 'obx/sum/mainsum.dart';

class ObxGetBuilderMenu extends StatelessWidget {
  const ObxGetBuilderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Option Page I"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(ObxPage());
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Obx",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(GetBuilderPage());
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Builder",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(MainSumPage());
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
