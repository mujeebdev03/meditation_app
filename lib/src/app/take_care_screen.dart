import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/src/app/router/router.dart';

import '../../Const.dart';

class TakeCareScreen extends StatefulWidget {
   TakeCareScreen({super.key});

  @override
  State<TakeCareScreen> createState() => _TakeCareScreenState();
}

class _TakeCareScreenState extends State<TakeCareScreen> {
  String dropdownvalue = " Day 1"; 

  var data =[
     " Day 1",
     " Day 2",
     " Day 3",
     " Day 4",
     " Day 5",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.transparent,
     actions: [
      InkWell(
        
          child: Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: CircleAvatar(
                           child: Icon(
                Icons.person,
                size: 26.0,
                
              ),
            ),
          ),
          onTap: (){},
        ),
      ]
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
              child: Text( 'Take Care Yourself', style: GoogleFonts.aBeeZee(
              fontSize: 34,
          ),),
            ),
            
            FixHeight12(),
            Center(
            child: Text( 'Medatition more lless Stress, For inner Peace \n          with Medaition for healthy life', style: GoogleFonts.aBeeZee(
              fontSize: 14,
            ),),
          ),
          
           Center(
        child: Lottie.asset('assets/Images/med.json'),
      ),

                    DropdownButton(
                      
                      value:dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: data.map((String data){

                     return DropdownMenuItem(child: Text(data,style: GoogleFonts.aBeeZee(),),
                      value: data,);
                      }
                      ).toList(), 
                      onChanged:(e){}),
                      FixHeight12(),

                      Text(" What is Mental Health",style: GoogleFonts.aBeeZee(),),
                      Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  
                                  Icon(
                                    // <-- Icon
                                    Icons.play_circle,
                                    size: 22.0,
                                    color:Color.fromARGB(255, 117, 69, 7),
                                  ),
                                   SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    '20 Minutes ',
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                    )
                                    
                                  ), 
                                  
                                 
                                ],
                              ),
                            ),
                          ),
                            SizedBox(
          height: MediaQuery.of(context).size.height*0.07,
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
                  " Start Now",
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

          

        

        ],
      ),
    )
    );
  }
}
