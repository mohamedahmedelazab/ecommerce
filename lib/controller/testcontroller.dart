import 'package:ecommerce/core/class/StatusRequest.dart';
import 'package:ecommerce/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';
import 'package:ecommerce/core/function/handlingData.dart';
class Testcontroller extends GetxController
{

  TestData testdata=TestData(Get.find());
  List data=[];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testdata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status']=="nodata") {
        statusRequest=StatusRequest.nodata;
      }
      else
        {
          data.addAll(response['data']);
        }

    }
    print(statusRequest);
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

}