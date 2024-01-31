// ignore_for_file: prefer_const_constructors

import 'package:crm_mobile/Screens/Auth/login.dart';
import 'package:crm_mobile/Specs/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Specs/color.dart';
import '../../Specs/text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      // Navigate to the main screen after 2 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/gitpluslogo.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: Text(
                      "GIT",
                      style: stylishStyles(
                          30, colorMap['gitGrey'] as Color, FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7, left: 10),
                    child: Text(
                      "PLUS",
                      style: stylishStyles(
                          30, colorMap['gitRed'] as Color, FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/loader.gif'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                "Copy Right © 2023 CRM Mobile",
                style: stylishStyles(13, Colors.black, FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
