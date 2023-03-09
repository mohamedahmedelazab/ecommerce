import 'package:ecommerce/controller/onboardingcontroller.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customebutton extends GetView<OnboardingcontrollerTmp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(height: 40, child:
    MaterialButton(child: Text("continue".tr,style: TextStyle(fontSize: 16, color: Colors.white),),onPressed: (){
      controller.next();


    },color: AppColor.primary,),padding: EdgeInsets.symmetric(vertical: 4,horizontal: 100),);
  }

}