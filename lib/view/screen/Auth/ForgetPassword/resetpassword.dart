import 'package:ecommerce/controller/Auth/resetpasswordcontroller.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/controller/Auth/ForgetPasswordcontroller.dart';
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

class resetpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    resetpasswordcontrollerTmp controller =
        Get.put(resetpasswordcontrollerTmp());
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.1,
          title: Text(
            "reset".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              CustomeTextheadAuth(
                title: "resetttitle".tr,
              ),
              SizedBox(
                height: 15,
              ),
              CustomeTextFormAuth(
                isNumber:false,
                validat: (val) {},
                hittext: "hitlableRP".tr,
                hitlable: "hittextRP".tr,
                icondata: Icons.lock_clock_outlined,
                mycontroller: controller.password,
              ),
              CustomeTextFormAuth(
                isNumber:false,
                validat: (val) {},
                hittext: "hittextRP2".tr,
                hitlable: "hitlableRP2".tr,
                icondata: Icons.lock_clock_outlined,
                mycontroller: controller.repassword,
              ),

/*              InkWell(child: Text("forget".tr,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),),
*/
              CustomButtomAuth(
                  text: "resetbtn".tr,
                  onPressed: () {
                    controller.Gotosucessresetpassword();
                  }),
            ],
          ),
        ));
  }
}
