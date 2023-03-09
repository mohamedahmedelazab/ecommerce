import 'package:ecommerce/core/constant/colorApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget
{
   String textbutton;
   void Function() onPressed;
   CustomButtonLang({required this.textbutton,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(width: double.infinity,child:
    MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 100),
      color: AppColor.primary,
      textColor: Colors.white,
      child: Text(textbutton,style: TextStyle(fontWeight: FontWeight.bold),),onPressed: onPressed,),);
  }

}