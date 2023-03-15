import 'package:ecommerce/controller/Auth/SuccessResetpasswordController.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sucesspasswordreset extends StatelessWidget {
  const sucesspasswordreset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetpasswordControllerTmp controller =
        Get.put(SuccessResetpasswordControllerTmp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.1,
        title: Text(
          "sucess".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.check_circle_outline,
                color: AppColor.primary,
                size: 200,
              ),
              Text("checkmailsucess".tr),
              Spacer(),
              Container(
                width: double.infinity,
                child: CustomButtomAuth(
                    text: "logintxt".tr,
                    onPressed: () {
                      controller.Gotosigninpage();
                    }),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
