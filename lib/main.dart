// ignore_for_file: prefer_const_constructors
import 'package:crm_mobile/Hive/boxe.dart';
import 'package:crm_mobile/Hive/todotask.dart';
import 'package:crm_mobile/Screens/Splash/splash.dart';
import 'package:crm_mobile/controllers/chatprovider.dart';
import 'package:crm_mobile/controllers/settingscontroller.dart';
import 'package:crm_mobile/controllers/todocontrollers.dart';
import 'package:crm_mobile/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
   await Hive.initFlutter();
    Hive.registerAdapter(TodotaskAdapter());
   todoBox = await Hive.openBox<Todotask>('todoTaskBox');
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
    providers: [
      Provider<SettingsController>(create: (_) => SettingsController()),
      Provider<ChatProvider>(create: (_) => ChatProvider()),
      Provider<TodoController>(create: (_)=>TodoController())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Typography.blackCupertino,),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surface: Colors.blue,
          background: Colors.white,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
