import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class ForgetPasswordcontroller extends GetxController
{
  checkemail();
  GotoVerviycode();
}

class ForgetPasswordcontrollerTmp extends ForgetPasswordcontroller
{

  late TextEditingController email;

  @override
  GotoVerviycode() {
    // TODO: implement Gotosignuppage
    Get.toNamed(AppRouts.verifycode);
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