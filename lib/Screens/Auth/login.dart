// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, missing_required_param

import 'package:crm_mobile/Screens/Home/home.dart';
import 'package:crm_mobile/Screens/Home/inithome.dart';
import 'package:crm_mobile/Specs/colors.dart';
import 'package:crm_mobile/Specs/password_field.dart';
import 'package:crm_mobile/Specs/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import '../../Specs/text_field.dart';
import '../../widgets/containerbtn.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/log.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                "Convenient & Productive Task Manager",
                style: textStylesserrat(15, Colors.black, FontWeight.w300),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text(
                textAlign: TextAlign.center,
                "Sign in",
                style: textStylesserrat(20, Colors.black, FontWeight.w700),
              ),
            ),
            Gap(30),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 42),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Email",
                    style: textStylesserrat(17, GITBLUE, FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: textFormField(
                  cursorColor: Colors.black,
                  prefixIconColor: Colors.blueAccent,
                  borderWidth: 2,
                  borderRadius: 10,
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                  keyboardType: TextInputType.multiline,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ]),
            ),
            Gap(20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 42),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Password",
                    style: textStylesserrat(17, GITBLUE, FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Container(
                child: PasswordField(
                  borderWidth: 2,
                  borderRadius: 10,
                  removeBorder: true,
                  validateMsg: "Field required",
                  controller: null,
                ),
              ),
            ),
            ContainerBTN(title: "Login", page: InitNavBar()),
          ],
        ),
      ),
    );
  }
}
