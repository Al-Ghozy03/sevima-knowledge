// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sevima_knowledge/widgets/card_col.dart';

class SavedCourse extends StatefulWidget {
  const SavedCourse({super.key});

  @override
  State<SavedCourse> createState() => _SavedCourseState();
}

class _SavedCourseState extends State<SavedCourse> {
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
              Text(
                "Saved Course",
                style: TextStyle(fontSize: 20, fontFamily: "montserrat semi"),
              ),
              SizedBox(height: 10),
              StaggeredGrid.count(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                children: [1, 2, 3, 4, 5].map((e) => CardCol()).toList(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
