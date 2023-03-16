import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class signincontroller extends GetxController
{
  Login();
  Gotosignuppage();
  gotoforgetpassword();
}

class signincontrollerTmp extends signincontroller
{
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  bool isShowpassword=true;
  changeshow()
  {
    isShowpassword=isShowpassword==true?false:true;
    update();
  }
  @override
  Gotosignuppage() {
    // TODO: implement Gotosignuppage
   Get.toNamed(AppRouts.Signup);
  }

  gotoforgetpassword()
  {
  Get.toNamed(AppRouts.forgetpassword);
  }
@override
  void onInit() {
    // TODO: implement onInit
  email=TextEditingController();
  password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Login() {
    // TODO: implement Login
    throw UnimplementedError();
  }

}