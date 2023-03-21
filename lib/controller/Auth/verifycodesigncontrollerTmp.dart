import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class verifycodesigncontroller extends GetxController
{
  checkcode();
  Gotorestcode();
}

class verifycodesigncontrollerTmp extends verifycodesigncontroller
{
  late String verifycode;
  @override
  Gotorestcode() {
    // TODO: implement Gotosignuppage
    Get.toNamed(AppRouts.Gotosucesignup);
  }
  @override
  void onInit() {
    // TODO: implement onInit


    super.onInit();
  }
  @override
  void dispose() {

    // TODO: implement dispose
    super.dispose();
  }
  @override
  checkcode() {
    // TODO: implement Login
    throw UnimplementedError();
  }

}