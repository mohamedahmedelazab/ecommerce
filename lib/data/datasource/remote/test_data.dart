import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/link_api.dart';

class TestData
{
    Crud crud;
    TestData(this.crud);

    getData() async{
    var response=await crud.postData(AppLinkApi.testlink,{});
    return response.fold((l) => l, (r) => r);

  }
}