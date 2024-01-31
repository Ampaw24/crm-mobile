// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, no_leading_underscores_for_local_identifiers

import "package:buttons_tabbar/buttons_tabbar.dart";
import "package:crm_mobile/Screens/Home/progressPro.dart";
import "package:crm_mobile/Screens/Home/task.dart";
import "package:flutter/material.dart";
import "../../Specs/colors.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: AppBar(
           
            automaticallyImplyLeading: false,
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.only(top: 18, right: 15),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(),
                      child: Image.asset('assets/notificationbell.gif')),
                ]),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color>[
      Color(0xff2980b9),
      Color(0xff6dd5fa),
          
        ],
      ),
    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 30),
                    child: Text(
                      "Hi Family",
                      style: TextStyle(
                        fontSize: 20,
                        color: WHITE,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      "You’ve got 6 tasks to complete ",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(210, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 10),
                        width: w * 0.71,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.3),
                            color: WHITE),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Search tasks & projects"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
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
          ),
          preferredSize: Size.fromHeight(220),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    "Overview ",
                    style: TextStyle(
                      fontSize: 17,
                      color: BLACK,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 15),
                ButtonsTabBar(
                 elevation: 0.0,
                 height: 40,

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                            gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color>[
      Color(0xff2980b9),
      Color(0xff6dd5fa),
          
        ],
      ),
                    ),
                    splashColor: FIANT,
                    unselectedBackgroundColor: CON,
                    labelStyle: TextStyle(
                      color: WHITE,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: TextStyle(
                      color: GITBLUE,
                      fontWeight: FontWeight.bold,
                    ),
                    borderWidth: 0.2,
                    unselectedBorderColor: CON,
                  
                    radius: 10,
                    tabs: [
                      Tab(
                        text: "Progress",
                      ),
                      Tab(
                        text: "Completed",
                      ),
                    ]),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Text(
                                "Projects ",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: DEEPGREY,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              "assets/driver.png",
                              scale: 1,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ProgressWidget(),
                        SizedBox(height: 30),
                        Tasks()
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Text(
                                "Projects ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: DEEPGREY,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              "assets/driver.png",
                              scale: 1,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ProgressWidget(),
                        SizedBox(height: 30),
                        Tasks()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
