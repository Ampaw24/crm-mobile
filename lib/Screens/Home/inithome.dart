// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors, sort_child_properties_last

import 'package:crm_mobile/Modules/Settings/settings.dart';
import 'package:crm_mobile/Modules/Task/taskpage.dart';
import 'package:crm_mobile/Modules/Todo/todo.dart';
import 'package:crm_mobile/Modules/chat/pages/chats.dart';
import 'package:crm_mobile/Screens/Home/home.dart';
import 'package:crm_mobile/Specs/colors.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class InitNavBar extends StatelessWidget {
  const InitNavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarItems = [
      PersistentBottomNavBarItem(
        activeColorPrimary: WHITE,
        icon: Container(
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/hughug.png"), fit: BoxFit.cover)),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/keyboard.png"), fit: BoxFit.cover)),
        ),
        activeColorPrimary: WHITE,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
            height: 50,
            width: 50,
            child: Image.asset("assets/home.png"),
            decoration: BoxDecoration(
               gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors:const <Color>[
           Color(0xff2980b9),
           Color(0xff6dd5fa),
          
        ],
      ),
              
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                      color: GITBLUE,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.60))
                ])),
        activeColorPrimary: WHITE,
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 64,
          width: 64,
          child: Image.asset("assets/chat.png"),
        ),
        activeColorPrimary: WHITE,
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 64,
          width: 64,
          child: Image.asset("assets/candle.png"),
        ),
        activeColorPrimary: WHITE,
      ),
    ];
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 2),
      screens: _buildScreens(),
      items: _navBarItems,
      confineInSafeArea: false,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: false,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 10),
        curve: Curves.bounceInOut,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeInCubic,
        duration: Duration(milliseconds: 60),
      ),
      navBarHeight: 90,
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<Widget> _buildScreens() {
    return [TodoPage(), TaskPage(), Home(), Chats(), SettingsView()];
  }
}
