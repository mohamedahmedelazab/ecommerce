import 'package:flutter/material.dart';
      class CustomeTextFormAuth extends StatelessWidget
      {
        final String hittext;
        final String hitlable;
        final IconData icondata;
        final TextEditingController? mycontroller;
        CustomeTextFormAuth({required this.hittext,required this.hitlable,required this.icondata, this.mycontroller});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
     Container(padding: EdgeInsets.only(bottom: 20),child:  TextFormField(
       controller: mycontroller,
       decoration: InputDecoration(
           hintStyle: TextStyle(fontSize: 14),
           hintText:  hittext,
           contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
           label: Container(margin: EdgeInsets.all(7),
               child: Text(hitlable)),
           suffixIcon: Icon(icondata),
           border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30)
           )
       ),
     ),);
  }

      }