import 'package:ecommerce/controller/Auth/signinController.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/core/function/alertExitAppF.dart';
import 'package:ecommerce/core/function/validInput.dart';
import 'package:ecommerce/view/screen/Auth/Signup.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeLogoAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:ecommerce/view/widget/Auth/customtextsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signincontrollerTmp controller = Get.put(signincontrollerTmp());

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.1,
          title: Text(
            "sign".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child:Form(
            key: controller.formstate,
            child:  ListView(
              children: [
                LogoAuth(),
                SizedBox(
                  height: 5,
                ),
                CustomeTextheadAuth(
                  title: "signtitle".tr,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: CustomeTextbodyAuth(mytext: "signtitle2".tr)),
                CustomeTextFormAuth(
                    isNumber:false,
                    validat: (val) {
                      return validInput(val!,2,20,"email");
                    },
                    hittext: "hittextE".tr,
                    hitlable: "hitlableE".tr,
                    icondata: Icons.email_outlined,
                    mycontroller: controller.email),
               GetBuilder<signincontrollerTmp>(builder: (controller)=>
                   CustomeTextFormAuth(
                   onTapIcon: () {
                     controller.changeshow();
                   },
                   obscureText:controller.isShowpassword,
                   isNumber:false,
                   validat: (val) {
                     return validInput(val!,2,20,"password");
                   },
                   hittext: "hittextP".tr,
                   hitlable: "hitlableP".tr,
                   icondata: Icons.lock_clock_outlined,
                   mycontroller: controller.password)),
                InkWell(
                  child: Text(
                    "forget".tr,
                    style: TextStyle(
                        color: AppColor.primary, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    controller.gotoforgetpassword();
                  },
                ),
                CustomButtomAuth(text: "logintxt".tr, onPressed: () {
                  controller.Login();
                }),
                SizedBox(
                  height: 30,
                ),
                custometextsignuporsignin(
                  text1: "nothaveaccount".tr,
                  text2: "signup".tr,
                  ontab: () {
                    controller.Gotosignuppage();
                  },
                )
              ],
            ),
          ),
        )),);
  }
}
