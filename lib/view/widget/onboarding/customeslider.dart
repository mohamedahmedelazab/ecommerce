import 'package:ecommerce/controller/onboardingcontroller.dart';
import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class customeSlider extends GetView<OnboardingcontrollerTmp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onpagechange(val);
      },
      itemCount: onboardingmodelList.length,
      itemBuilder: (BuildContext context,int i){
        return Column(children: [
          Image.asset(
            onboardingmodelList[i].image!,
            // width: ,
              height: Get.width/1.3,

             fit: BoxFit.fill,
          ),
          const SizedBox(height: 20),
          Text(onboardingmodelList[i].title!,
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 20),

          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onboardingmodelList[i].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              )),
        ],);
      },
    );
  }

}