import 'dart:ui';

import 'package:ecommerce/core/services/servecies.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController
{
    Locale language= Locale("ar");
  MyServices myservices=Get.find();

    changeLang(String langcode)
  {
    Locale local=Locale(langcode);
    myservices.sharedRefrence.setString("lang", langcode);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    String? sharedrefLang=myservices.sharedRefrence.getString("lang");
    if(sharedrefLang=="ar")
      {
        language=Locale("ar");
      }
    else  if(sharedrefLang=="en")
      {
        language=Locale("en");
      }
    else
      {
        Locale(Get.deviceLocale!.languageCode);
      }
    super.onInit();
  }

}