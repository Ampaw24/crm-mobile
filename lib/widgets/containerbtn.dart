import 'package:crm_mobile/Specs/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerBTN extends StatelessWidget {
  final String title;
  final Widget page;
  const ContainerBTN({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        transition: Transition.rightToLeftWithFade,
        duration: const Duration(milliseconds: 300),
        () => page,
      ),
      child: Container(
          margin: const EdgeInsets.only(top: 40),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xff1B7DD8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: WHITE)))),
    );
  }
}
