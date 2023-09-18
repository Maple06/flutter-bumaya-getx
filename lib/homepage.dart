import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'obxgetbuilder.dart';
import 'snackdialogbottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Center(child: Image.asset("assets/getx.png", height: 100)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height - 100,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(const ObxGetBuilderMenu());
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Obx",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("GetBuilder",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(const SnackDialogBottomPage());
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Snackbox",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("Dialog",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("BottomSheet",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: const [
                              Text("Named",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("Navigation",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dependency",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("Management",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
