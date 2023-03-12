import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class custometextsignuporsignin extends StatelessWidget {

  final String text1;
  final String text2;
  final void Function()? ontab;
   const custometextsignuporsignin({Key? key,required this.text1,required this.text2,required this.ontab}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Row(children: [
       Text(text1),
       InkWell(child: Text(text2,style: TextStyle(color: AppColor.primary,fontWeight: FontWeight.bold),),
       onTap:ontab ,
       )
     ],);
   }
 }
