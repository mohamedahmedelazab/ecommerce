import 'dart:ui';
import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/core/localization/ChangeLocal.dart';
import 'package:ecommerce/view/widget/Language/CustomeButtonLang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class LanguagesView extends GetView<LocaleController> {
  const LanguagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRouts.onBoarding) ;
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRouts.onBoarding) ;
                  }),
            ],
          )),
    );
  }
}
