import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

abstract  class resetpasswordcontroller extends GetxController
{
  checkemail();
  Gotosucessresetpassword();
}

class resetpasswordcontrollerTmp extends resetpasswordcontroller
{

  late TextEditingController password;
  late TextEditingController repassword;
  @override
  Gotosucessresetpassword() {
    // TODO: implement Gotosignuppage
    Get.toNamed(AppRouts.sucesspasswordreset);
  }
  @override
  void onInit() {
    // TODO: implement onInit

    password=TextEditingController();
    repassword=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {

    password.dispose();
    repassword.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  checkemail() {
    // TODO: implement Login
    throw UnimplementedError();
  }

}