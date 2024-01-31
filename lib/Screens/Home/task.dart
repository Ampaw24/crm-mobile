// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Modules/Task/taskpage.dart';
import '../../Specs/colors.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (int i = 0; i < 7; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                width: 380.06,
                height: 193.53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: CON),
                child: Column(
                  children: [
                    Container(
                      width: 380.06,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero,
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: TASK),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tasks",
                              style: TextStyle(
                                fontSize: 13,
                                color: DEEPGREY,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/keyboard-open.png",
                            scale: 1,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Building smartschool website ",
                            style: TextStyle(
                              fontSize: 13,
                              color: BLACK,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Completed with the navbar and footers with images",
                            style: TextStyle(
                              fontSize: 10,
                              color: BLACK,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
