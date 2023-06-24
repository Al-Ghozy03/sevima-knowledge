// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Input extends StatelessWidget {
  String label;
  String hintText;
  TextInputType textInputType;
  Input(
      {required this.label,
      required this.hintText,
      required this.textInputType});
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 17, fontFamily: "montserrat medium"),
        ),
        SizedBox(height: 6),
        TextField(
          obscureText: label.toLowerCase() == "password"?true:false,
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.symmetric(horizontal: width / 30),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0),
                  borderRadius: BorderRadius.circular(10))),
          keyboardType: textInputType,
        )
      ],
    );
  }
}
