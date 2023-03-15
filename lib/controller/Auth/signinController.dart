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
  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  Gotosignuppage() {
    // TODO: implement Gotosignuppage
   Get.toNamed(AppRouts.Signup);
  }
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
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
var formstat=formstate.currentState;
if(formstat!.validate())
  {
    return "valid";
  }
else
  {
    return "Not valid";
  }
  }

}