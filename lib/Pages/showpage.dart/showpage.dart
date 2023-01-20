import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Pages/MedatitionScreen.dart';

import 'package:med_app_/Const.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
        
      body: Column(
        
        children: [
          FixHeight12(),
          FixHeight12(),
          
          ListTile(
            title: Center(
              child: Text(
                "Say Hi To Your \nSelf-Care Journal",
                style: GoogleFonts.pacifico(fontSize: 28),
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
                  Get.to(MedatitionScreen1());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                    backgroundColor: Color.fromARGB(255, 117, 69, 7),
                    side: BorderSide(
                        width: 2, color: Color.fromARGB(255, 56, 34, 2))),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          FixHeight12(),
          
        ],
      ),
    ));
  }
}
