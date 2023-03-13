import 'package:ecommerce/Routs.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/core/localization/ChangeLocal.dart';
import 'package:ecommerce/core/localization/Translation.dart';
import 'package:ecommerce/core/services/servecies.dart';
import 'package:ecommerce/view/screen/Language.dart';
import 'package:ecommerce/view/screen/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await inialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    LocaleController controller=   Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      routes:Routs().routes,

      theme: ThemeData(
        fontFamily:controller.language==const Locale("en")?"fair":"Tajawal",
        textTheme:  TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyText2: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
      home:const LanguagesView(), //
    );
  }
}

