import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';
import 'package:med_app_/src/app/router/router.dart';
import 'package:med_app_/src/app/wellcome_screen.dart';
import 'package:med_app_/src/modules/home/screens/widgets/meditation_card.dart';
import 'package:med_app_/src/utils/app_textstyles.dart';

import '../../../../CommonWidgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        body: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /////Center Title
              Center(
                
                child: Text(
                  "Medatition",
                  style: GoogleFonts.abel(fontSize: 44, fontWeight: FontWeight.bold),
                ),
              ),
              
              /////IST CARd
              MeditationCardWidget(
                buttonText: "10 Minutes",
                title: "Take Nature Year ",
                subTitle: "Basics of yoga for begginers and exepercinced ",
                backgroundColor: Color.fromARGB(255, 117, 69, 7),
                buttonColor: Color.fromARGB(255, 190, 156, 62),
                buttonTextColor: Color.fromARGB(255, 117, 69, 7),
                lottieAnimation: 'assets/Images/med.json',
              ),
              FixHeight12(),
              MeditationCardWidget(
                buttonText: "10 Minutes",
                title: "Flower Medatition ",
                subTitle:
                    "Medatition can produce a deep state of relaxation ",
                backgroundColor: Color.fromARGB(255, 190, 156, 62),
                buttonColor: Color.fromARGB(255, 117, 69, 7),
                buttonTextColor: Color.fromARGB(255, 190, 156, 62),
                lottieAnimation: 'assets/Images/med.json',
              ),
              FixHeight12(),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 227, 148),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Column(
                  children: [
                    Center(
                        child: ListTile(
                      title: Center(
                          child: Text(
                        "Medatition Can Produce", style: GoogleFonts.aBeeZee(),
                      )),
                      subtitle: Center(child: Text("Linkin Park")),
                    )),
                    ////fix Music Animation
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Color.fromARGB(255, 121, 97, 26),
                      child: Text("Audio Icons"),
                    ),
                    FixHeight12(),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.download)),
                        FixWidth12(),
                        FixWidth12(),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.skip_previous)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.pause)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
                        FixWidth12(),
                        FixWidth12(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      ],
                    ),
                  ],
                )),
              ),
              FixHeight12(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 150, 136, 13),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    Lottie.asset(
                      'assets/Images/flo.json',
                    ),
                    Column(
                      children: [
                        FixHeight12(),
                        Container(
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 117, 69, 7),
                          ),
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Center(
                            child: Text(
                              " 10 Minutes",
                              style: GoogleFonts.abel(
                                fontSize: 10,
                                color: Color.fromARGB(255, 255, 227, 148),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            " Flower Medatition \n   Next Page",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            
                          ),
                          onTap: (){
                            Get.to(wellcomeBackScreen());
                            
                          }
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FixHeight12(),
            ],
          ),
        ),
      ),
    );
  }
}
