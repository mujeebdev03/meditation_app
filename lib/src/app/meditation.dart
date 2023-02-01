import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_app_/src/app/router/router.dart';
import 'package:med_app_/src/utils/app_colors.dart';

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medatition App',
      initialRoute: AppRouter.splashScreen,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: GoogleFonts.pacificoTextTheme()),
      getPages: AppRouter.routes,
    );
  }
}
