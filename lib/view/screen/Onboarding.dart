import 'package:ecommerce/controller/onboardingcontroller.dart';
import 'package:ecommerce/view/widget/onboarding/customeslider.dart';
import 'package:ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingcontrollerTmp());
    // TODO: implement build
   return Scaffold(
   body: SafeArea(
    child: Container(

     child: Column(
     children: [
       Expanded(
         flex: 4,
         child: customeSlider(),
       ),


       Expanded(
           flex: 1,
           child:Container(padding: EdgeInsets.symmetric(vertical: 20),child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               customedotcontroller(),

               Spacer(),
               customebutton()],)),)
     ],)
   )
   )
   );

  }

}