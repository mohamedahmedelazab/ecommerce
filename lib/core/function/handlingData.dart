import 'package:ecommerce/core/class/StatusRequest.dart';

handlingData(response)
{
  if (response is StatusRequest) {
   return response;
  }
  else
    {
      return StatusRequest.success;
    }
}