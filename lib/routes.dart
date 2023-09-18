import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smekdu_getx/homepage.dart';
import 'package:smekdu_getx/obx/getbuilder.dart';
import 'package:smekdu_getx/obx/obx.dart';
import 'package:smekdu_getx/obx/sum/mainsum.dart';
import 'package:smekdu_getx/obx/sum/sumdisimpan.dart';
import 'package:smekdu_getx/obxgetbuilder.dart';
import 'package:smekdu_getx/snack/textfield.dart';
import 'package:smekdu_getx/snackdialogbottom.dart';
import 'package:smekdu_getx/simplecounter.dart';

List<GetPage> router = [
  GetPage(name: "/", page: () => Scaffold(body: SafeArea(child: HomePage()))),

  GetPage(name: "/obx", page: () => Scaffold(body: SafeArea(child: ObxGetBuilderMenu()))),
  GetPage(name: "/snack", page: () => Scaffold(body: SafeArea(child: SnackDialogBottomPage()))),

  // Obx Page
  GetPage(name: "/obx/obx", page: () => Scaffold(body: SafeArea(child: ObxPage()))),
  GetPage(name: "/obx/getbuilder", page: () => Scaffold(body: SafeArea(child: GetBuilderPage()))),

  // Sum Page
  GetPage(name: "/obx/sum", page: () => Scaffold(body: SafeArea(child: MainSumPage()))),
  GetPage(name: "/obx/sum/saved", page: () => Scaffold(body: SafeArea(child: SavedSumPage()))),

  // Snackbar Page
  GetPage(name: "/snack/saved", page: () => Scaffold(body: SafeArea(child: TextFieldPage()))),
  GetPage(name: "/snack/counter", page: () => Scaffold(body: SafeArea(child: CounterPage()))),
];