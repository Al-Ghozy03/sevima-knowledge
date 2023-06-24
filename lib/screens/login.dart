// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/widgets/input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: width / 7,
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Unlock your potential\nwith Knowledge",
                      style: TextStyle(fontSize: width / 23),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(height: 13),
              Input(
                label: "Email",
                hintText: "john@gmail.com",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 13),
              Input(
                label: "Password",
                hintText: "Min. 8 characters",
                textInputType: TextInputType.text,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 12, color: blueTheme),
                    )),
              ),
              Container(
                width: width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: blueTheme,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: "montserrat semi", fontSize: 15),
                    )),
              ),
              SizedBox(height: 7),
              Center(child: Text("Or", style: TextStyle(color: Colors.grey))),
              SizedBox(height: 7),
              Container(
                width: width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 216, 216, 216)),
                            borderRadius: BorderRadius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", height: 20),
                        SizedBox(width: 7),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              fontFamily: "montserrat semi",
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    )),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontFamily: "montserrat",
                                color: Colors.black,
                                fontSize: 12),
                            children: [
                          TextSpan(text: "Don't have an Account? "),
                          TextSpan(
                              text: "Sign up",
                              style: TextStyle(color: blueTheme)),
                        ]))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
