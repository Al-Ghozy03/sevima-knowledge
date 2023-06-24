// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/colors.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final height = Get.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Iconsax.arrow_left,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: height,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: _messageFromMe(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _messageFromOther(),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }

  Widget _messageFromOther() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: blueThemeOpacity,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Text(
        "Iyaa",
        style: TextStyle(fontSize: 17),
      ),
    );
  }

  Widget _messageFromMe() => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: blueTheme,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Text(
          "Halooo",
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      );
}
