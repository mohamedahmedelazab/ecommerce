import 'package:ecommerce/controller/Auth/CheckEmailcontroller.dart';
import 'package:ecommerce/controller/Auth/ForgetPasswordcontroller.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CheckEmailcontrollerTmp controller=Get.put(CheckEmailcontrollerTmp());
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,elevation: 0.1,
          title: Text("checkmailtitle".tr,style: Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey ),),
        ),
        body:  Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: ListView(
            children: [

              SizedBox(height: 5,),
              CustomeTextheadAuth(title: "checkmailtitle".tr,),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.symmetric(horizontal: 30),

                  child: CustomeTextbodyAuth(mytext: "checkmailtitle2".tr)),
              SizedBox(height: 15,),

              CustomeTextFormAuth(hittext:"hittextE".tr ,hitlable:"hitlableE".tr ,icondata: Icons.email_outlined,mycontroller: controller.email,),

/*              InkWell(child: Text("forget".tr,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),),
*/
              CustomButtomAuth(text: "checkmailbtn".tr,onPressed: (){
                controller.Gotosucesignup();
              }),

            ],
          ),)


    );
  }
}
