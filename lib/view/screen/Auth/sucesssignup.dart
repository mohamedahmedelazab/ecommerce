import 'package:ecommerce/controller/Auth/SucessSignupController.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class sucessignup extends StatelessWidget {
  const sucessignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SucessSignupControllerTmp controller=Get.put(SucessSignupControllerTmp());
    return Scaffold(appBar:  AppBar(
      centerTitle: true,
      backgroundColor: AppColor.backgroundcolor,elevation: 0.1,
      title: Text("sucess".tr,style: Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey ),),
    ),

      body:Center(
        child: Column(
          children: [
            Icon(Icons.check_circle_outline,color: AppColor.primary,size: 200,),
            Text("checkmailsucess".tr),
          const Spacer(),
          SizedBox(width: double.infinity,
          child:   CustomButtomAuth(text: "logintxt".tr,onPressed: (){
            controller.Gotosigninpage();

          }),

          ),
         const SizedBox(height: 20,)
          ],
        ),
      ),);
  }
}
