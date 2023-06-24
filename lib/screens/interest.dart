// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/screens/dashboard.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose your interest",
                style: TextStyle(fontFamily: "montserrat semi", fontSize: 20),
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 10),
              Container(
                width: width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => Dashboard(),
                          transition: Transition.rightToLeftWithFade);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: blueTheme,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Done",
                      style: TextStyle(
                          fontFamily: "montserrat semi", fontSize: 15),
                    )),
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
