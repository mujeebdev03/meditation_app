import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';

import '../CommonWidgets.dart';

class MedatitionScreen1 extends StatelessWidget {
  const MedatitionScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /////Center Title
            ListTile(
              title: Center(
                child: Text(
                  "Medatition",
                  style: GoogleFonts.genos(
                      fontSize: 38, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            /////IST CARd
        Med_Screen_Reusable_Container(text10mint: "10 Minutes", 
        Text1: "Take Nature Year ", 
        Text2:  "Basics of yoga for begginers and exepercinced ",
         Container_Color: Color.fromARGB(255, 117, 69, 7),
         small10: Color.fromARGB(255, 190, 156, 62),
         small10text:Color.fromARGB(255, 117, 69, 7),lottieI:'assets/Images/med.json',),
         FixHeight12(),
         Med_Screen_Reusable_Container(text10mint: "10 Minutes", 
        Text1: "Flower Medatition ", 
        Text2:  "Medatition can produce a deep state of relaxation and atranqul ",
         Container_Color: Color.fromARGB(255, 190, 156, 62),
          small10:Color.fromARGB(255, 117, 69, 7),
          small10text: Color.fromARGB(255, 190, 156, 62),lottieI:'assets/Images/med.json',),
         FixHeight12(),
        Container(
         height: MediaQuery.of(context).size.height*0.3, 
         width: MediaQuery.of(context).size.width*0.8,
        
         decoration: BoxDecoration(
           color:Color.fromARGB(255, 255, 227, 148),
           borderRadius: BorderRadius.circular(15)

        ),
      child: Center(child: Column(
        children: [
          Center(child:ListTile(
            title: Center(child: Text("Medatition Can Produce ",)),
            subtitle: Center(child: Text("Linkin Park ")),
          )),
         Container(
          height: 80,
          width: 100,
          color: Colors.amber,
          child: Text("Audio Icons "),
         ),
         FixHeight12(),
         Row(
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.download)),
            FixWidth12(),
            FixWidth12(),
            IconButton(onPressed: (){}, icon:Icon(Icons.skip_previous)),
            IconButton(onPressed: (){}, icon:Icon(Icons.pause)),
            IconButton(onPressed: (){}, icon:Icon(Icons.skip_next)),
            FixWidth12(), 
            FixWidth12(), 
            IconButton(onPressed: (){}, icon:Icon(Icons.favorite)),
            
          ],
         ),
        ],
      )),
        ),
        FixHeight12(),
         Container(
         height: MediaQuery.of(context).size.height*0.1, 
         width: MediaQuery.of(context).size.width*0.8,
       color: Colors.pinkAccent,
        ),
        FixHeight12(),
     
          ],
        ),
      ),
    ));
  }
}

