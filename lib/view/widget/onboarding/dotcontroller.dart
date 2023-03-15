import 'package:ecommerce/controller/onboardingcontroller.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customedotcontroller extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return
     GetBuilder<OnboardingcontrollerTmp>(builder: (OnboardingcontrollerTmp){
       return
         Row(

         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ...List.generate(onboardingmodelList.length,
               (index) =>AnimatedContainer(
                   margin:const EdgeInsets.all(5),
                   width:OnboardingcontrollerTmp.CurrentPage==index? 20:7,
                   height: 6,
                   decoration: BoxDecoration(color: AppColor.primary,borderRadius: BorderRadius.circular(10)),
                   duration: Duration(microseconds: 900)
               )

           )

         ],);
     });


  }

}