// ignore_for_file: prefer_const_constructors

import 'package:crm_mobile/Screens/Home/home.dart';
import 'package:crm_mobile/Specs/text.dart';
import 'package:crm_mobile/controllers/settingscontroller.dart';
import 'package:crm_mobile/widgets/containerbtn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import '../../Specs/colors.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    final settings = context.read<SettingsController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            Row(
              children: [
                const Gap(20),
                Text(
                  "  General",
                  style: textStylesserrat(16, Colors.black, FontWeight.w500),
                ),
              ],
            ),
            const Gap(7),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListView.builder(
                  itemCount: context.read<SettingsController>().settLength,
                  itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 3,
                                    color:
                                        Color.fromARGB(255, 219, 219, 219)))),
                        child: ListTile(
                          onTap: () => Get.to(
                              transition: Transition.rightToLeftWithFade,
                              duration: const Duration(milliseconds: 600),
                              () => settings.settingsElements[index].navigator),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(context
                                .read<SettingsController>()
                                .settingsElements[index]
                                .leadIcon),
                          ),
                          subtitle: Text(
                            context
                                .read<SettingsController>()
                                .settingsElements[index]
                                .subHeader,
                            style: const TextStyle(color: Color(0xff918AAB)),
                          ),
                          title: Text(context
                              .read<SettingsController>()
                              .settingsElements[index]
                              .header),
                        ),
                      )),
            ),
            const Gap(20),
            Row(
              children: [
                const Gap(30),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Account Settings",
                    style: textStylesserrat(15, Colors.black, FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: MediaQuery.of(context).size.height * 0.18,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListView.builder(
                  itemCount: context.read<SettingsController>().accLength,
                  itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 3,
                                    color:
                                        Color.fromARGB(255, 219, 219, 219)))),
                        child: ListTile(
                          onTap: () => Get.to(
                              () => settings.accountSettings[index].navigator),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(context
                                .read<SettingsController>()
                                .accountSettings[index]
                                .leadIcon),
                          ),
                          subtitle: Text(
                            context
                                .read<SettingsController>()
                                .accountSettings[index]
                                .subHeader,
                            style: const TextStyle(color: Color(0xff918AAB)),
                          ),
                          title: Text(context
                              .read<SettingsController>()
                              .accountSettings[index]
                              .header),
                        ),
                      )),
            ),
            const Center(
                child: ContainerBTN(
              title: "Sign Out",
              page: Home(),
            ))
          ],
        ),
      ),
    );
  }
}
