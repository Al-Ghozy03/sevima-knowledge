// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/widgets/input.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left)),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset("assets/images/bear.png", height: 55),
                  SizedBox(width: 15),
                  Flexible(
                    child: Text(
                      "Muhammad Faiz Al Ghozi",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "montserrat semi"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Personal Details",
                style: TextStyle(fontSize: 17, fontFamily: "montserrat semi"),
              ),
              SizedBox(height: 13),
              Input(
                  label: "Email",
                  hintText: "John@gmail.com",
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 13),
              Input(
                  label: "Name",
                  hintText: "John",
                  textInputType: TextInputType.text),
              SizedBox(height: 13),
              Input(
                  label: "Password",
                  hintText: "Min. 8 characters",
                  textInputType: TextInputType.text),
              SizedBox(height: 13),
              Container(
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: blueTheme,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Save",
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
}
