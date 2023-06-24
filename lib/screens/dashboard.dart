// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sevima_knowledge/widgets/card_col.dart';
import 'package:sevima_knowledge/widgets/card_row.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/bear.png"),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Back!"),
                      Text(
                        "Muhammad Faiz Al Ghozi",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "montserrat semi"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Recommended",
                style: TextStyle(fontFamily: "montserrat semi", fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20),
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) => CardRow(),
                itemCount: 4,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular",
                style: TextStyle(fontFamily: "montserrat semi", fontSize: 25),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  children: [1, 2, 3, 4, 5].map((e) => CardCol()).toList(),
                ))
          ],
        ),
      )),
    );
  }
}
