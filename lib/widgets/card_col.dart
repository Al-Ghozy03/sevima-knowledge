// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sevima_knowledge/screens/detail.dart';

class CardCol extends StatefulWidget {
  const CardCol({super.key});

  @override
  State<CardCol> createState() => _CardColState();
}

class _CardColState extends State<CardCol> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      closedBuilder: (context, action) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_1280.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Web Programming",
                      style: TextStyle(
                          fontSize: 17, fontFamily: "montserrat semi"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Dapibus adipiscing massa quis sit nunc tincidunt platea. Eleifend quam malesuada morbi dolor interdum nam adipiscing dictum.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
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
              )
            ],
          ),
        );
      },
      openBuilder: (context, action) {
        return Detail(thumbnail: "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_1280.jpg",);
      },
    );
  }
}
