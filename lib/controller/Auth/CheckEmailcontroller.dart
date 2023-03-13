import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class CheckEmailcontroller extends GetxController
{
  checkemail();
  Gotosucesignup();
}

class CheckEmailcontrollerTmp extends CheckEmailcontroller
{

  late TextEditingController email;

  @override
  Gotosucesignup() {
    // TODO: implement Gotosignuppage
    Get.toNamed(AppRouts.Gotosucesignup);
  }
  @override
  void onInit() {
    // TODO: implement onInit

    email=TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {

    email.dispose();

    // TODO: implement dispose
    super.dispose();
  }
  @override
  checkemail() {
    // TODO: implement Login
    throw UnimplementedError();
  }

}