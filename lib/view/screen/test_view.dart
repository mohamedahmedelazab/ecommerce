import 'package:ecommerce/controller/testcontroller.dart';
import 'package:ecommerce/core/class/HandlingDataView.dart';
import 'package:ecommerce/core/class/StatusRequest.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testview extends StatelessWidget {
  const Testview({Key? key}) : super(key: key);
     
  @override
  Widget build(BuildContext context) {
    Get.put(Testcontroller());
    return Scaffold(appBar: AppBar(title: Text("test"),backgroundColor: AppColor.primary,),
        body: GetBuilder<Testcontroller>(builder: (controller){
         return  HandlingDataView(
             statusRequest: controller.statusRequest,
             widget: ListView.builder(
             itemCount: controller.data.length,
             itemBuilder: (context, index) {
               return Text("${controller.data}");
             }));

        }));
  }
}
