import 'package:ecommerce/controller/Auth/signupController.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings
{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>signupcontrollerTmp(),fenix: true);
  }

}