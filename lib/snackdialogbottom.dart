import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/textfield_controller.dart';

class SnackDialogBottomPage extends StatelessWidget {
  const SnackDialogBottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextFieldController textFieldController = Get.put(TextFieldController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snack-Dialog-BottomSheet"),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                TextField(
                  controller: textFieldController.controller,
                  decoration: const InputDecoration(
                    hintText: "Input Nama Anda",
                  ),
                ),
                ElevatedButton(
                  child: const Text("Submit"),
                  onPressed: () {
                    if (textFieldController.controller.text != "") {
                      Get.defaultDialog(
                        content: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Apakah kamu mau menyimpan nama ${textFieldController.controller.text}?",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              textFieldController.names
                                  .add(textFieldController.controller.text);
                              Get.back();
                              Get.snackbar(
                                "Berhasil disimpan!",
                                "Nama ${textFieldController.names.last} berhasil disimpan!",
                                snackPosition: SnackPosition.BOTTOM,
                                duration: const Duration(seconds: 3),
                                margin: const EdgeInsets.all(15),
                                dismissDirection: DismissDirection.horizontal,
                                backgroundColor: Colors.green,
                              );
                              textFieldController.controller.text = "";
                            },
                            child: const Text("Ya"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                    color: Colors.redAccent),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.redAccent),
                            ),
                            child: const Text(
                              "Batal",
                            ),
                          ),
                        ],
                      );
                    } else {
                      Get.snackbar(
                        "ERROR",
                        "Nama tidak boleh kosong",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 3),
                        margin: const EdgeInsets.all(15),
                        dismissDirection: DismissDirection.horizontal,
                        backgroundColor: Colors.red,
                      );
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      "/snack/saved",
                      arguments: textFieldController.names,
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Remove background color to white
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.blue), // Add blue border
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text("Ke list nama"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(
                            textFieldController.switchTextValue.value,
                            style: TextStyle(
                              color: textFieldController.switchValue.value
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          )),
                      Obx(
                        () => Switch(
                            onChanged: (val) => textFieldController.toggle(),
                            value: textFieldController.switchValue.value),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ElevatedButton(
                                      onPressed: (){
                                        Get.toNamed("/snack/counter");
                                      },
                                      child: Text("Pergi ke Page +/-")
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text("Show +/- BottomSheet")
                )
              ],
            )));
  }
}
