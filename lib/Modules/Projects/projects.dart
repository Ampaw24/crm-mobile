// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import '../Settings/settings.dart';
import '../../Specs/colors.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDateTime = DateFormat('d MMM hh:mm').format(now);
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: GITBLUE,
          title: Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "Projects",
              style: TextStyle(
                fontSize: 20,
                color: WHITE,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Get.to(
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 600),
                  () => SettingsView());
            },
            child: Container(
              margin: EdgeInsets.only(top: 18, left: 15),
              width: 40,
              height: 45,
              decoration: BoxDecoration(
                  color: APPBAR, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Ionicons.arrow_back_sharp,
                color: WHITE,
                size: 20,
              ),
            ),
          ),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 0, bottom: 30),
                    width: 280.55,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.3),
                        color: WHITE),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Search tasks"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 0, bottom: 30),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.3),
                        color: WHITE),
                    child: Image.asset("assets/search.png"),
                  ),
                ],
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(180),
      ),
     
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Building smartschool website ",
                    style: TextStyle(
                      fontSize: 20,
                      color: BLACK,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Project description  ",
                    style: TextStyle(
                      fontSize: 15,
                      color: GITBLUE,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Vitae at et adipiscing egestas sodales vitae amet id pellentesque. Euismod ullamcorper scelerisque tempus lacus id volutpat viverra nisl viverra. Aliquet in turpis condimentum enim in sit. Felis a nullam eu maecenas eu enim lacus habitant. Urna tellus tristique ullamcorper adipiscing dictum sem. ",
                style: TextStyle(
                  fontSize: 13,
                  color: DEEPGREY,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Project progress  ",
                    style: TextStyle(
                      fontSize: 15,
                      color: GITBLUE,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/pBar.png",
                    scale: 5,
                  ),
                ),
                SizedBox(width: w * 0.15),
                Text(
                  "50%",
                  style: TextStyle(
                    fontSize: 11.73,
                    color: GITORG,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 0),
                  child: Text(
                    "Click on bar to enter progress rate (percentage wise)  ",
                    style: TextStyle(
                      fontSize: 10,
                      color: DEEPGREY,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 35,
                  decoration: BoxDecoration(
                      color: GITBLUE, borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(left: 10, top: 10),
                  padding: EdgeInsets.only(left: 15, top: 0),
                  child: Row(
                    children: [
                      Text(
                        "Add daily tasks ",
                        style: TextStyle(
                          fontSize: 15,
                          color: WHITE,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 4),
                      Image.asset(
                        "assets/edit.png",
                        scale: 0.9,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            for (int i = 0; i < 5; i++)
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/heart.png",
                          scale: 3,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Navbar design and coding and upload to live server ',
                          style: TextStyle(
                            fontSize: 12,
                            color: GITBLUE,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet consectetur.\nLacus eget etiam mauris ',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          formattedDateTime,
                          style: TextStyle(
                            fontSize: 10,
                            color: BLACK,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
