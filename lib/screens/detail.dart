// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sevima_knowledge/screens/materi.dart';
import 'package:sevima_knowledge/screens/quiz.dart';

class Detail extends StatefulWidget {
  String thumbnail;
  Detail({required this.thumbnail});
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(widget.thumbnail),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Iconsax.arrow_left,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Web Programming",
                    style:
                        TextStyle(fontSize: 25, fontFamily: "montserrat semi"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.yellow,
                        size: 23,
                      ),
                      Text(
                        "4,5 (20 Reviewers)",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Massa pellentesque faucibus vitae magna ultrices risus nulla vel. Ut ante adipiscing elit fringilla quis eu adipiscing consectetur adipiscing. Vitae risus posuere vestibulum feugiat posuere amet sociis fringilla. Faucibus a ligula viverra varius lectus vel consectetur tellus purus. Ac et imperdiet risus donec amet nullam porttitor id. Nibh faucibus ut non est suspendisse donec ut netus blandit. Nisl neque enim cursus integer hendrerit at ultrices duis velit.",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Modules",
                    style:
                        TextStyle(fontSize: 20, fontFamily: "montserrat semi"),
                  ),
                  SizedBox(height: 10),
                  StaggeredGrid.count(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    children: [1, 2, 3, 4]
                        .map((e) => _list("Introduction", "learning.png"))
                        .toList(),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _list(String title, String img) => TextButton(
        onPressed: () {
          Get.to(() => Quiz(courseName: "Web Programmer",materiName: title), transition: Transition.rightToLeftWithFade);
          // Get.to(() => Materi(courseName: "Web Programmer",materiName: title), transition: Transition.rightToLeftWithFade);
        },
        child: Row(
          children: [
            Image.asset(
              "assets/images/$img",
              height: 35,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                  fontFamily: "montserrat medium", color: Colors.black),
            )
          ],
        ),
      );
}
