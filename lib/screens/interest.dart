// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, curly_braces_in_flow_control_structures, sized_box_for_whitespace

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sevima_knowledge/api_service.dart';
import 'package:sevima_knowledge/colors.dart';
import 'package:sevima_knowledge/models/category_model.dart';
import 'package:sevima_knowledge/screens/dashboard.dart';
import 'package:http/http.dart' as http;

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  late Future getCategory;
  List selected = [];
  bool isLoading = false;
  Future submit() async {
    setState(() {
      isLoading = true;
    });
    Uri url = Uri.parse("$baseUrl/interest/bulk-create");
    final res =
        await http.post(url, body: jsonEncode({"data": selected}), headers: {
      "Authorization": "Bearer ${storage.read("token")}",
      "Content-Type":"application/json"
    });
    if (res.statusCode == 200) {
      setState(() {
        isLoading = false;
      });
      Get.off(() => Dashboard(), transition: Transition.rightToLeftWithFade);
    } else {
      setState(() {
        isLoading = false;
      });
      print(res.body);
    }
  }
  @override
  void initState() {
    getCategory = ApiService.getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose your interest",
                style: TextStyle(fontFamily: "montserrat semi", fontSize: 20),
              ),
              SizedBox(height: 15),
              FutureBuilder(
                builder: (_, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState != ConnectionState.done)
                    return CircularProgressIndicator();
                  if (snapshot.hasError) return Text("Something went wrong");
                  if (snapshot.hasData) return _list(snapshot.data, selected);
                  return Text("Empty");
                },
                future: getCategory,
              ),
              SizedBox(height: 10),
              Container(
                width: width,
                child: ElevatedButton(
                    onPressed: () {
                      submit();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: blueTheme,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: isLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                            "Done",
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

  Widget _list(CategoryModel data, List selected) {
    return Wrap(
      children: data.data.map((e) => _item(e.name, e.id, selected)).toList(),
    );
  }

  Widget _item(String title, int id, List selected) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (selected
                  .where((element) => element["id_category"] == id)
                  .toList()
                  .isNotEmpty) {
                selected.removeWhere((element) => element["id_category"] == id);
              } else {
                selected.add({"id_category": id});
              }
            });
          },
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: selected
                      .where((element) => element["id_category"] == id)
                      .toList()
                      .isNotEmpty
                  ? blueTheme.withOpacity(0.4)
                  : blueThemeOpacity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
          child: Text(
            title,
            style:
                TextStyle(color: Colors.black, fontFamily: "montserrat medium"),
          )),
    );
  }
}
