// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crm_mobile/Modules/Projects/projects.dart';
import 'package:flutter/material.dart';

import '../../Specs/colors.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({super.key});

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Projects()));
              },
              child: Container(
                width: 170.06,
                height: 156.53,
                margin: EdgeInsets.only(
                  left: 25,
                  top: 0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: CON),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Completed with the navbar and .... ",
                        style: TextStyle(
                          fontSize: 13,
                          color: DEEPGREY,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/Line.png",
                            scale: 8,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "50 % ",
                            style: TextStyle(
                              fontSize: 12,
                              color: GITORG,
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
            width: 20,
          )
        ],
      ),
    );
  }
}
