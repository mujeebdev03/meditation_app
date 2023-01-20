import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app_/Pages/MedatitionScreen.dart';
import 'package:med_app_/Pages/wellcomeback.dart';

import 'Pages/showpage.dart/showpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medatition App',
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 235, 130, 200)),
      // initialRoute: 'MedatitionScreen',
      // routes: {
      //   "ShowPage": (context) => ShowPage(),
      //   "MedatitionScreen": (context) => MedatitionScreen1(),
      //   "WellcomeScreen": (context) => WellcomeBackScreen(),
      // },
      home: ShowPage(),
      );
      
  }
}
