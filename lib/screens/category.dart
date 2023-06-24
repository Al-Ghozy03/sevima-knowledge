// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sevima_knowledge/colors.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Category",
                style: TextStyle(fontSize: 20, fontFamily: "montserrat semi"),
              ),
              Wrap(
                children: [
                  _item("Programming"),
                  SizedBox(width: 10),
                  _item("Design"),
                  SizedBox(width: 10),
                  _item("Data"),
                  SizedBox(width: 10),
                  _item("Art"),
                  SizedBox(width: 10),
                  _item("Web"),
                  SizedBox(width: 10),
                  _item("AI"),
                  SizedBox(width: 10),
                  _item("Office"),
                  SizedBox(width: 10),
                  _item("History"),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget _item(String title) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: blueThemeOpacity,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text(
          title,
          style:
              TextStyle(color: Colors.black, fontFamily: "montserrat medium"),
        ));
  }
}
