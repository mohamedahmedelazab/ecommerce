import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(color: AppColor.primary),
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ));
  }
}
