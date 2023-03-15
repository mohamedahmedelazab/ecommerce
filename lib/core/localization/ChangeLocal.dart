import 'dart:ui';

import 'package:ecommerce/core/constant/Apptheme.dart';
import 'package:ecommerce/core/services/servecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController
{
    Locale? language;
  MyServices myservices=Get.find();
    ThemeData apptheme=english_theme;
    changeLang(String langcode)
  {
    Locale local=Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    String? sharedrefLang=myservices.sharedPreferences.getString("lang");
    if(sharedrefLang=="ar")
      {
        language=Locale("ar");
        apptheme=arabic_theme;
      }
    else  if(sharedrefLang=="en")
      {
        language=Locale("en");
        apptheme=english_theme;
      }
    else
      {
        language=Locale(Get.deviceLocale!.languageCode);
      }
    super.onInit();
  }

}