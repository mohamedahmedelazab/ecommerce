import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/view/screen/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Routs
{

  Map<String, Widget Function(BuildContext)> routes = {

    AppRouts.login:(context)=> Login()
  };
}