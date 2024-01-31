import 'package:flutter/material.dart';


class LoginField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const LoginField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width *0.65,
     height: 10,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(right: 15),
  fillColor: Colors.white,
          enabledBorder: InputBorder.none,
          focusedBorder:InputBorder.none,
           
          
          hintText: hintText,
        ),
      ),
    );
  }
}
