import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smekdu_getx/controllers/sum_controller.dart';

import 'sumdisimpan.dart';

class MainSumPage extends StatelessWidget {
  const MainSumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sum X + Y"), centerTitle: true),
        body: GetBuilder<SumController>(builder: (sumController) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                          "X: ${sumController.x.toString()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ]),
                ),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          sumController.incrementX();
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(child: Text("+")),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          sumController.decrementX();
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(child: Text("-")),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                          "Y: ${sumController.y.toString()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          sumController.incrementY();
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(child: Text("+")),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          sumController.decrementY();
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(child: Text("-")),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    sumController.hasil();
                  },
                  child: Ink(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Sum!",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ]),
                  ),
                ),
                const SizedBox(height: 10),
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
                          "Hasil: ${sumController.sum}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          sumController.simpan();
                          sumController.pesanSimpan();
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text("Save Result",
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          Get.to(const SavedSumPage());
                        },
                        child: Ink(
                          width: MediaQuery.of(context).size.width / 2 - 25,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text("Saved Equations",
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Center(child: Text(sumController.pesan.toString())),
              ],
            ),
          );
        }));
  }
}
