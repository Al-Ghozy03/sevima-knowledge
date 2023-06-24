// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sevima_knowledge/screens/detail.dart';

class CardRow extends StatefulWidget {
  const CardRow({super.key});

  @override
  State<CardRow> createState() => _CardRowState();
}

class _CardRowState extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OpenContainer(
          closedElevation: 0,
          closedBuilder: (context, action) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_1280.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Web Programming",
                    style:
                        TextStyle(fontSize: 17, fontFamily: "montserrat semi"),
                  ),
                  Text(
                    "20 Modules",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.yellow,
                        size: 19,
                      ),
                      Text(
                        "4,5 (20 Reviewers)",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          openBuilder: (context, action) {
            return Detail(thumbnail: "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_1280.jpg",);
          },
        ),
        SizedBox(width: 20)
      ],
    );
  }
}
