import 'package:flutter/material.dart';

class CustomeTextheadAuth extends StatelessWidget
{
  final String title;
  CustomeTextheadAuth({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Text(title,style:Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,);
  }

}