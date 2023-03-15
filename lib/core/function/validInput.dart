import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "valideusername".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "validemail".tr;
    }
  }



  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "validephone".tr;
    }
  }

  if (val.isEmpty) {
    return "valideempty".tr;
  }

  if (val.length < min) {
    return  "validemin".tr + "$min";
  }

  if (val.length > max) {
    return  "validemax".tr + "$max";
  }
}


