import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends  GetxService
{
  late SharedPreferences sharedRefrence;

  Future<MyServices> init() async
  {
     sharedRefrence =await  SharedPreferences.getInstance();
     return this;
  }

}

inialService() async
{
  await  Get.putAsync(() => MyServices().init());
}