import 'package:ecommerce/controller/Auth/verifycodesigncontrollerTmp.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class verifycodesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    verifycodesigncontrollerTmp controller=Get.put(verifycodesigncontrollerTmp());
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,elevation: 0.1,
          title: Text("verify".tr,style: Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey ),),
        ),
        body:  Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: ListView(
            children: [

              SizedBox(height: 5,),
              CustomeTextheadAuth(title: "verify".tr,),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.symmetric(horizontal: 30),

                  child: CustomeTextbodyAuth(mytext: "verifytitle".tr)),
              SizedBox(height: 15,),

              OtpTextField(
                fieldWidth: 50,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  controller.Gotorestcode();
                }, // end onSubmit
              ),



/*              InkWell(child: Text("forget".tr,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),),
*/

            ],
          ),)


    );
  }
}