import 'package:flutter/material.dart';

class CustomeTextFormAuth extends StatelessWidget {
  final String hittext;
  final String hitlable;
  final IconData icondata;
  final TextEditingController? mycontroller;
  final String? Function(String?) validat;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  CustomeTextFormAuth(
      {required this.hittext,
      required this.hitlable,
      required this.icondata,
      required this.mycontroller,
      required this.validat,
      required this.isNumber,
        this.obscureText,
        this.onTapIcon
      });
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: TextFormField(
         keyboardType:isNumber==true?TextInputType.numberWithOptions(decimal: true):TextInputType.text,
        controller: mycontroller,
        validator: validat,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: TextStyle(fontSize: 14),
            hintText: hittext,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(margin: EdgeInsets.all(7), child: Text(hitlable)),
            suffixIcon: InkWell(child: Icon(icondata), onTap: onTapIcon),
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
