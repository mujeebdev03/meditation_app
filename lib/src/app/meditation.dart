import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_app_/src/app/on_boarding_screen.dart';
import 'package:med_app_/src/utils/app_colors.dart';

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medatition App',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: GoogleFonts.pacificoTextTheme()),
      home: const OnBoardingScreen(),
    );
  }
}
