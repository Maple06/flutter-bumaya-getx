import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'obxgetbuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(child: Image.asset("getx.png", height: 100)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(ObxGetBuilderMenu());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Column(
                          children: [
                            Text("Obx",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 30)),
                            Text("GetBuilder",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 30))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Column(
                          children: [
                            Text("Snackbox",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                            Text("Dialog",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                            Text("ButtomSheet",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Column(
                          children: [
                            Text("Named",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                            Text("Navigation",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Column(
                          children: [
                            Text("Dependency",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                            Text("Management",
                                style:
                                TextStyle(color: Colors.white, fontSize: 30))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
