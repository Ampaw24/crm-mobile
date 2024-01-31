// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, missing_required_param, no_leading_underscores_for_local_identifiers, unused_field, unused_local_variable

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:crm_mobile/Modules/Settings/settings.dart';
import 'package:crm_mobile/Screens/Home/home.dart';
import 'package:crm_mobile/Specs/colors.dart';
import 'package:crm_mobile/controllers/todocontrollers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import '../../widgets/taskBtmSheet.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    TextEditingController _taskController = TextEditingController();
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM y').format(now);
    final reader = context.read<TodoController>();
    bool _material3 = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            backgroundColor: GITBLUE,
            title: Container(
              margin: EdgeInsets.only(top: 30,left: 5),
              child: Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 20,
                  color: WHITE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          
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
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 0, bottom: 30),
                        width: 280,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.3),
                            color: WHITE),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("  Search tasks"),
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
          ),
          preferredSize: Size.fromHeight(180),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15),
                ButtonsTabBar(
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
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 13,
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
                        text: "Daily Tasks",
                      ),
                      Tab(
                        text: "Assigned",
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
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                              backgroundColor: GITBLUE,
                              
                              onPressed: () {
                                taskBottomSheet(context);
                              },
                              child: Container(
                                width: 100,
                                height: 45,
                                decoration: BoxDecoration(
                                  
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset('assets/dairyedit.png')
                                ),
                              ),
                            ),
                          ],
                        ),
                        // ProgressWidget(),
                        const SizedBox(height: 30),
                        // Tasks()
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
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
                        const SizedBox(height: 20),
                        // ProgressWidget(),
                        const SizedBox(height: 30),
                        // Tasks()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
