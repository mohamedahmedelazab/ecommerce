import 'package:ecommerce/controller/Auth/signupController.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeLogoAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:ecommerce/view/widget/Auth/customtextsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signupcontrollerTmp controller=Get.put(signupcontrollerTmp());
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,elevation: 0.1,
          title: Text("signup".tr,style: Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey ),),
        ),
        body:  Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: ListView(
            children: [

              SizedBox(height: 5,),
              CustomeTextheadAuth(title: "signtitle".tr,),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.symmetric(horizontal: 30),

                  child: CustomeTextbodyAuth(mytext: "signtitle2".tr)),
              SizedBox(height: 15,),
              CustomeTextFormAuth(hittext:"hittextusername".tr ,hitlable:"hitlableusername".tr ,icondata: Icons.person_2_outlined,mycontroller: controller.username,),

              CustomeTextFormAuth(hittext:"hittextE".tr ,hitlable:"hitlableE".tr ,icondata: Icons.email_outlined,mycontroller: controller.email,),
              CustomeTextFormAuth(hittext:"hittextphone".tr ,hitlable:"hitlablephone".tr ,icondata: Icons.phone_android_outlined,mycontroller: controller.phone,),


              CustomeTextFormAuth(hittext:"hittextP".tr ,hitlable:"hitlableP".tr ,icondata: Icons.lock_clock_outlined,mycontroller: controller.password,),

/*              InkWell(child: Text("forget".tr,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),),
*/
              CustomButtomAuth(text: "signup".tr,onPressed: (){
                controller.Signup();
              }),
              SizedBox(height: 30,),
              custometextsignuporsignin(text1: "haveaccount".tr,text2: "sign".tr,ontab: (){
                controller.Gotosigninpage();

              },)
            ],
          ),)


    );
  }
}
