import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/src/app/router/router.dart';
import 'package:med_app_/src/modules/home/screens/home_screen.dart';
import 'package:med_app_/src/utils/app_textstyles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: Center(
              child: Text(
                "Say Hi To Your \nSelf-Care Journal",
                style: AppTextStyle.kBlackRegular.copyWith(fontSize: 28.0),
              ),
            ),
            subtitle: Center(child: Text("Medicate More , Stress Less")),
          ),
          Container(
            child: Lottie.asset('assets/Images/med.json'),
          ),
          SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRouter.homeScreen);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color.fromARGB(255, 117, 69, 7),
                  side: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 56, 34, 2))),
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
