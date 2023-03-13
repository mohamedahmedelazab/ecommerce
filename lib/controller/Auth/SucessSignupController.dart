import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class SucessSignupController extends GetxController
{
  Signup();
  Gotosigninpage();
}

class SucessSignupControllerTmp extends SucessSignupController
{
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  Gotosigninpage() {
    // TODO: implement Gotosignuppage
    Get.toNamed(AppRouts.login);
  }
  @override
  void onInit() {
    // TODO: implement onInit
    username=TextEditingController();
    email=TextEditingController();
    phone=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Signup() {
    // TODO: implement Login
    Get.offAllNamed(AppRouts.CheckEmail);
  }

}