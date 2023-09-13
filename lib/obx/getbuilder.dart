import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smekdu_getx/controllers/tap_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.put(TapController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Builder"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: GetBuilder<TapController>(builder: (tapController) {
          return Column(
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tapController.x.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  tapController.increment();
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
                          "Increase",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ]),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  tapController.decrement();
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
                          "Decrease",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ]),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
