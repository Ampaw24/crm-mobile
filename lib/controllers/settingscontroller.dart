// ignore_for_file: unnecessary_getters_setters, prefer_const_constructors
import 'package:crm_mobile/Modules/Projects/projects.dart';
import 'package:crm_mobile/Modules/chat/pages/chats.dart';
import 'package:crm_mobile/Screens/Auth/resetPassword/confirmmail.dart';
import 'package:crm_mobile/Modules/Task/taskpage.dart';
import 'package:crm_mobile/Modules/Todo/todo.dart';
import 'package:crm_mobile/model/settingsmodule.dart';
import 'package:flutter/material.dart';

class SettingsController with ChangeNotifier {
  //General Elements Provider
  List<SettingsModule> _settingsElements = [
    SettingsModule(
      header: "My Tasks",
      subHeader: "Check and manage your Daily Tasks.",
      leadIcon: "assets/keyboard-open.png",
      navigator: const TaskPage(),
    ),
    SettingsModule(
        header: "My Projects",
        subHeader: "Check and manage your Daily Tasks.",
        leadIcon: "assets/driver.png",
        navigator: Projects()),
    SettingsModule(
        header: "To Do",
        subHeader: "Check and manage your Daily Tasks.",
        leadIcon: "assets/bookmark.png",
        navigator: const TodoPage()),
    SettingsModule(
        header: "Chats",
        subHeader: "Check and manage your Daily Tasks.",
        leadIcon: "assets/messages.png",
        navigator: Chats()),
    SettingsModule(
        header: "Terms and Conditions",
        subHeader: "Check and manage your Daily Tasks.",
        leadIcon: "assets/global.png",
        navigator: Container()),
  ];
  //Account Settings Provider
  List<SettingsModule> _accountSettings = [
    SettingsModule(
      header: "Elikem Kwabena Mensah",
      subHeader: "mensah@gitplus.app",
      leadIcon: "assets/driver.png",
      navigator: Container(),
    ),
    SettingsModule(
      header: "Reset Password",
      subHeader: "Change Password",
      leadIcon: "assets/unlock.png",
      navigator: const ConfirmMail(),
    ),
  ];
  //Account Settings Provider
  List<SettingsModule> get accountSettings => _accountSettings;

  set accountSettings(List<SettingsModule> value) {
    _accountSettings = value;
  }

  int get accLength => accountSettings.length;

  //General Elements Provider
  List<SettingsModule> get settingsElements => _settingsElements;
  int get settLength => settingsElements.length;

  set settingsElements(List<SettingsModule> value) {
    _settingsElements = value;
  }
}
