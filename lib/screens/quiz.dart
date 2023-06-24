// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/colors.dart';

class Quiz extends StatefulWidget {
  String courseName;
  String materiName;
  Quiz({super.key, required this.courseName, required this.materiName});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
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
              Text(
                "1. What is Programming?",
                style: TextStyle(fontSize: 15, fontFamily: "montserrat semi"),
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: "I dont know",
                        activeColor: blueTheme,
                        groupValue: "I dont know",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      Text("I dont know"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "I know",
                        activeColor: blueTheme,
                        groupValue: "I know",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      Text("I know"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "I dont know",
                        activeColor: blueTheme,
                        groupValue: "I dont know",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      Text("I dont know"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
