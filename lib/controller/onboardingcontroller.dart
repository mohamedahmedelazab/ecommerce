import 'package:ecommerce/core/constant/AppRouts.dart';
import 'package:ecommerce/core/services/servecies.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Onboardingcontroller extends GetxController
{
  next();
  onpagechange(int index);
}

class OnboardingcontrollerTmp extends Onboardingcontroller
{

int CurrentPage=0;
late PageController pageController;
MyServices myServices=Get.find();
@override
void onInit() {
  // TODO: implement onInit
  pageController= PageController();
   super.onInit();
}
 @override
 next() {
    // Shared Refrence From serve

   CurrentPage++;
    if(CurrentPage > onboardingmodelList.length-1)
      {
        myServices.sharedPreferences.setString("onboarding", "1");
         Get.offNamed(AppRouts.login);
      }
    else
      {
        pageController.animateToPage(CurrentPage , duration:const  Duration(milliseconds: 900), curve: Curves.easeInOutExpo);
      }
  }

  @override
  onpagechange(int index) {
    CurrentPage=index;
    update();
  }

}