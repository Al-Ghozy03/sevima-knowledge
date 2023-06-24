// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sevima_knowledge/screens/settings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              SizedBox(height: 10),
              _menu("Joined Course", () {}),
              _menu("Settings", () => Get.to(() => Settings(),transition: Transition.rightToLeftWithFade)),
              _menu("Logout", () {}),
            ],
          ),
        ),
      )),
    );
  }

  Widget _menu(String title, onTap) => InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          width: Get.width,
          child: Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
}
