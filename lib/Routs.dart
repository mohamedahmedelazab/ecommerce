import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/Auth/Login.dart';
import 'package:ecommerce/view/screen/Auth/Signup.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/Verviycode.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/resetpassword.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/sucesspasswordreset.dart';
import 'package:ecommerce/view/screen/Auth/sucesssignup.dart';
import 'package:ecommerce/view/screen/Auth/verifycodesign.dart';
import 'package:ecommerce/view/screen/Language.dart';
import 'package:ecommerce/view/screen/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screen/Auth/ForgetPassword/ForgetPassword.dart';

class Routs
{

  List<GetPage<dynamic>>? routes=[
    GetPage(name: "/", page: () => const LanguagesView() , middlewares: [Mymiddleware()]),
    GetPage(name: AppRouts.login, page: ()=>Login()),
    GetPage(name: AppRouts.Signup, page: ()=>Signup()),
    GetPage(name: AppRouts.onBoarding, page: ()=>Onboarding()),
    GetPage(name: AppRouts.forgetpassword, page: ()=>ForgetPassword()),
    GetPage(name: AppRouts.verifycode, page: ()=>verifycode()),
    GetPage(name: AppRouts.resetpassword, page: ()=>resetpassword()),
    GetPage(name: AppRouts.sucesspasswordreset, page: ()=>sucesspasswordreset()),
    GetPage(name: AppRouts.Gotosucesignup, page: ()=>sucessignup()),
    GetPage(name: AppRouts.verifycodesign, page: ()=>verifycodesign()),
  ];


  /*  Map<String, Widget Function(BuildContext)> routes = {

    AppRouts.login:(context)=> Login(),
    AppRouts.Signup:(context)=> Signup(),
    AppRouts.onBoarding:(context)=> Onboarding(),
    AppRouts.forgetpassword:(context)=> ForgetPassword(),
    AppRouts.verifycode:(context)=>verifycode(),
    AppRouts.resetpassword:(context)=>resetpassword(),
    AppRouts.sucesspasswordreset:(context)=>sucesspasswordreset(),
    AppRouts.Gotosucesignup:(context)=>sucessignup(),
    AppRouts.verifycodesign:(context)=>verifycodesign(),

  };*/
}