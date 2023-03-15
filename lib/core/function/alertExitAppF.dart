import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp(){
  Get.defaultDialog(
      title: "alerttitle".tr,
      middleText: "alerttext".tr,
      actions: [
        ElevatedButton(onPressed: (){
          exit(0);

        }, child: Text("alertconfirm".tr)),
        ElevatedButton(onPressed: (){
          Get.back();

        }, child: Text("alertcancel".tr))
      ]

  );
  return Future.value(true);
}