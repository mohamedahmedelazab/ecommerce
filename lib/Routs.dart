import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/view/screen/Auth/Login.dart';
import 'package:ecommerce/view/screen/Auth/Signup.dart';
import 'package:ecommerce/view/screen/Auth/Verviycode.dart';
import 'package:ecommerce/view/screen/Auth/resetpassword.dart';
import 'package:ecommerce/view/screen/Auth/sucesspasswordreset.dart';
import 'package:ecommerce/view/screen/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'view/screen/Auth/ForgetPassword.dart';

class Routs
{

  Map<String, Widget Function(BuildContext)> routes = {

    AppRouts.login:(context)=> Login(),
    AppRouts.Signup:(context)=> Signup(),
    AppRouts.onBoarding:(context)=> Onboarding(),
    AppRouts.forgetpassword:(context)=> ForgetPassword(),
    AppRouts.verifycode:(context)=>verifycode(),
    AppRouts.resetpassword:(context)=>resetpassword(),
    AppRouts.sucesspasswordreset:(context)=>sucesspasswordreset(),


  };
}