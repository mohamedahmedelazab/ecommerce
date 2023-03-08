import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Container(
       padding: EdgeInsets.all((15)),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Container(width: double.infinity,child:
           MaterialButton(
             padding: EdgeInsets.symmetric(horizontal: 100),
             color: AppColor.primary,
             textColor: Colors.white,
             child: Text("Ar",style: TextStyle(fontWeight: FontWeight.bold),),onPressed: (){

           },),)
       ],),
     ),
   );

  }

}