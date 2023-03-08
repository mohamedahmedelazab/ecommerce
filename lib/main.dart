import 'package:ecommerce/Routs.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/core/localization/Translation.dart';
import 'package:ecommerce/core/services/servecies.dart';
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
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes:Routs().routes,
      theme: ThemeData(
        fontFamily: "fair",
        textTheme: TextTheme(
          headline1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:AppColor.black),
          bodyText1:const TextStyle(height: 2,color:AppColor.grey,fontSize: 20),),
                 primarySwatch: Colors.blue,

      ),
      home: Onboarding(),
    );
  }
}
