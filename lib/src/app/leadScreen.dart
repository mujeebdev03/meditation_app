import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/src/app/router/router.dart';
import 'package:med_app_/src/app/session_screen.dart';

import '../../Const.dart';



class LeadScreen extends StatelessWidget {
  const LeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
         Center(
              child: Text( 'Lead Team', style: GoogleFonts.aBeeZee(
              fontSize: 44,
          ),),
            ),
            
            FixHeight12(),
            Center(
            child: Text( 'Became A leader', style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 117, 69, 7),
              fontSize: 20,
            ),),
            
          ),
           Center(
        child: Lottie.asset('assets/Images/crouch.json'),
      ),
      SizedBox(
            height: MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width*0.4,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color.fromARGB(255, 117, 69, 7),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 56, 34, 2))),
              child:  InkWell(
                child: Text(
                  " Request",
                  style:GoogleFonts.aBeeZee(
                    fontSize: 16
                  ),
                ),
                onTap: (){
                  Get.toNamed(AppRouter.leadScreen);
                },
              ),
            ),
          ),
           
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Text(" How It Works ?",style:GoogleFonts.cairo(
              fontSize: 28
            ),
            ),
          ),
          FixHeight12(),
          
          Column( 
            children: [
            
              Text(". Medatition can produce a deep state of relaxation \n traquil mind ,During medatition you focus.",
            style: GoogleFonts.aBeeZee(
              
            ),),
            FixHeight12(),
             Text(". Stream of jumbled thoughts that may be crowd- \n ing your mindand causing stress.",
            style: GoogleFonts.aBeeZee(
              
            ),),
            ],
          )

      ],

    ),),
    );
  }
}