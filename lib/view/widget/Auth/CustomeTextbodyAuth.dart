import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/material.dart';

class CustomeTextbodyAuth extends StatelessWidget
{
  final String mytext;
  CustomeTextbodyAuth({required this.mytext});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Text(mytext,style:Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.grey),textAlign: TextAlign.center,);
  }

}