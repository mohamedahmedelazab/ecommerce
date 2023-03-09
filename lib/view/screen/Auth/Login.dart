import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextbodyAuth.dart';
import 'package:ecommerce/view/widget/Auth/CustomeTextheadAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,elevation: 0.1,
      title: Text("sign".tr,style: Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey ),),
      ),
        body:  Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            CustomeTextheadAuth(title: "signtitle".tr,),
            SizedBox(height: 10,),
            Container(margin: EdgeInsets.symmetric(horizontal: 25),
                child: CustomeTextbodyAuth(mytext: "signtitle2".tr)),
            SizedBox(height: 65,),
            CustomeTextFormAuth(hittext:"hittextE".tr ,hitlable:"hitlableE".tr ,icondata: Icons.email_outlined,),

            CustomeTextFormAuth(hittext:"hittextP".tr ,hitlable:"hitlableP".tr ,icondata: Icons.lock_clock_outlined,)

          ],
        ),)


    );
  }
}
