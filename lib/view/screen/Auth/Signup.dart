import 'package:ecommerce/controller/Auth/signinController.dart';
import 'package:ecommerce/controller/Auth/signupController.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/core/function/alertExitAppF.dart';
import 'package:ecommerce/core/function/validInput.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:ecommerce/view/widget/Auth/customtextsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.1,
          title: Text(
            "signup".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(onWillPop: alertExitApp,

            child: GetBuilder<signupcontrollerTmp>(
            builder: (controller) {

              return  Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Form(
                key: controller.formstate_up,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    CustomeTextheadAuth(
                      title: "signtitle".tr,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child:
                        CustomeTextbodyAuth(mytext: "signtitle2".tr)),
                    SizedBox(
                      height: 15,
                    ),
                    CustomeTextFormAuth(
                      isNumber: false,
                      validat: (val) {
                        return validInput(val!, 5, 20, "username");
                      },
                      hittext: "hittextusername".tr,
                      hitlable: "hitlableusername".tr,
                      icondata: Icons.person_2_outlined,
                      mycontroller: controller.username,
                    ),
                    CustomeTextFormAuth(
                      isNumber: false,
                      validat: (val) {
                        return validInput(val!, 5, 20, "email");
                      },
                      hittext: "hittextE".tr,
                      hitlable: "hitlableE".tr,
                      icondata: Icons.email_outlined,
                      mycontroller: controller.email,
                    ),
                    CustomeTextFormAuth(
                      isNumber: true,
                      validat: (val) {
                        return validInput(val!, 5, 20, "phone");
                      },
                      hittext: "hittextphone".tr,
                      hitlable: "hitlablephone".tr,
                      icondata: Icons.phone_android_outlined,
                      mycontroller: controller.phone,
                    ),
                GetBuilder<signincontrollerTmp>(builder:(controller)=>     CustomeTextFormAuth(
                  obscureText: controller.isShowpassword,
                  isNumber: false,
                  validat: (val) {
                    return validInput(val!, 5, 20, "password");
                  },
                  hittext: "hittextP".tr,
                  hitlable: "hitlableP".tr,
                  onTapIcon:(){
                   controller.changeshow();
                  }
                  ,icondata: Icons.lock_clock_outlined,
                  mycontroller: controller.password,
                ) ),

/*              InkWell(child: Text("forget".tr,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),),
*/
                    CustomButtomAuth(
                        text: "signup".tr,
                        onPressed: () {
                          controller.Signup();
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    custometextsignuporsignin(
                      text1: "haveaccount".tr,
                      text2: "sign".tr,
                      ontab: () {
                        controller.Gotosigninpage();
                      },
                    )
                  ],
                ),
              ),
            );})));
  }
}
