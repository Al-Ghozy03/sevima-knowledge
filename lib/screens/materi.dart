// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/screens/chat.dart';

class Materi extends StatefulWidget {
  String courseName;
  String materiName;
  Materi({super.key, required this.courseName, required this.materiName});
  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  final width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => Chat(), transition: Transition.rightToLeftWithFade);
        },
        backgroundColor: blueTheme,
        child: Icon(Iconsax.messages),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Iconsax.arrow_left)),
                  Text(
                    "${widget.courseName} / ${widget.materiName}",
                    style:
                        TextStyle(fontSize: 15, fontFamily: "montserrat semi"),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                      ),
                      icon: Icon(
                        Iconsax.arrow_left_2,
                        color: blueTheme,
                        size: 17,
                      ),
                      label: Text(
                        "Prev",
                        style: TextStyle(color: blueTheme),
                      )),
                  ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                      ),
                      label: Icon(
                        Iconsax.arrow_right_3,
                        color: blueTheme,
                        size: 17,
                      ),
                      icon: Text(
                        "Next",
                        style: TextStyle(color: blueTheme),
                      )),
                ],
              ),
              SizedBox(height: 7),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                  ),
                  icon: Icon(
                    Iconsax.menu_1,
                    color: blueTheme,
                    size: 17,
                  ),
                  label: Text(
                    "Menu",
                    style: TextStyle(color: blueTheme),
                  )),
              SizedBox(height: 10),
              Text(
                widget.materiName,
                style: TextStyle(fontSize: 25, fontFamily: "montserrat semi"),
              ),
              SizedBox(height: 7),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Massa pellentesque faucibus vitae magna ultrices risus nulla vel. Ut ante adipiscing elit fringilla quis eu adipiscing consectetur adipiscing. Vitae risus posuere vestibulum feugiat posuere amet sociis fringilla. Faucibus a ligula viverra varius lectus vel consectetur tellus purus. Ac et imperdiet risus donec amet nullam porttitor id. Nibh faucibus ut non est suspendisse donec ut netus blandit. Nisl neque enim cursus integer hendrerit at ultrices duis velit.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: width / 4,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: blueTheme,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Next",
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
