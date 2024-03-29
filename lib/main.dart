import 'package:ecommerce/Routs.dart';
import 'package:ecommerce/Test.dart';
import 'package:ecommerce/binding.dart';
import 'package:ecommerce/core/localization/ChangeLocal.dart';
import 'package:ecommerce/core/localization/Translation.dart';
import 'package:ecommerce/core/services/servecies.dart';
import 'package:ecommerce/view/screen/Language.dart';
import 'package:ecommerce/view/screen/test_view.dart';
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

      //routes:Routs().routes,
      getPages: Routs().routes,
      initialBinding: MyBinding(),
      theme:controller.apptheme,
home: Testview(),
    );
  }
}

