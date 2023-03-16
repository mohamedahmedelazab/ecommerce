import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/core/services/servecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware
{

  int? get priority =>1;
  MyServices myServices = Get.find() ;

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return  RouteSettings(name: AppRouts.login) ;
    }
  }
}