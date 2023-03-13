import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/view/screen/Auth/Login.dart';
import 'package:ecommerce/view/screen/Auth/Signup.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/Verviycode.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/resetpassword.dart';
import 'package:ecommerce/view/screen/Auth/ForgetPassword/sucesspasswordreset.dart';
import 'package:ecommerce/view/screen/Auth/checkemail.dart';
import 'package:ecommerce/view/screen/Auth/sucesssignup.dart';
import 'package:ecommerce/view/screen/Onboarding.dart';
import 'package:flutter/material.dart';

import 'view/screen/Auth/ForgetPassword/ForgetPassword.dart';

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
    AppRouts.Gotosucesignup:(context)=>sucessignup(),
    AppRouts.CheckEmail:(context)=>CheckEmail(),


  };
}