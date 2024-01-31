import 'package:crm_mobile/Specs/text.dart';
import 'package:crm_mobile/Specs/text_field.dart';
import 'package:crm_mobile/widgets/containerbtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class ConfirmMail extends StatelessWidget {
  const ConfirmMail({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = "mail@kontimail.com";
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("assets/confirm.png", fit: BoxFit.cover),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "Confirm Email",
                style: textStylesserrat(25, Colors.black, FontWeight.w600),
              )),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "Verify your Registered mail Address..",
                style: textStylesserrat(15, Colors.black, FontWeight.w400),
              )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: textFormField(
                controller: TextEditingController.fromValue(
                  TextEditingValue(
                    text: arg,
                    selection: TextSelection.collapsed(
                      offset: arg.length,
                    ),
                  ),
                ),
                cursorColor: Colors.black,
                prefixIcon: Ionicons.mail,
                prefixIconColor: const Color.fromARGB(255, 90, 150, 255),
                hintText: "Verify Email",
                borderWidth: 2,
                borderRadius: 10,
                labelText: "Verify Email",
                labelStyle: const TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
                keyboardType: TextInputType.multiline,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ]),
          ),
          Gap(200),
          Center(child: ContainerBTN(title: "Submit", page: Container()))
        ],
      ),
    );
  }
}
