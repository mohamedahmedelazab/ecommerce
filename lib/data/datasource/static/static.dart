import 'package:ecommerce/core/constant/imageAsset.dart';
import 'package:ecommerce/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<onboardingmodel> onboardingmodelList=[
  onboardingmodel(
      title: "title1".tr,
      body:
      "content1".tr,
      image: AppImageAsset.onBoardingImageOne),
  onboardingmodel(
      title: "title2".tr,
      body:
      "content2".tr,
      image: AppImageAsset.onBoardingImageTwo),
  onboardingmodel(
      title: "title3".tr,
      body:
      "content3".tr,
      image: AppImageAsset.onBoardingImageThree),
  // OnBoardingModel(
  //     title: "Fast Delivery",
  //     body:
  //         "We Have a 100k Product , Choose \n Your Product From Our E-commerce Shop",
  //     image: AppImageAsset.onBoardingImageFour),
];
