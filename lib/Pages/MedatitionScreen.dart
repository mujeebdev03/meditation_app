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
            Med_Screen_Reusable_Container(),
            FixHeight12(),
           
            
           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 190, 156, 62),
                ),
                width: 430,
                height: 230,
                child: Row(
                  children: [
                    SizedBox(
                      height: 180,
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, 117, 69, 7)),
                            height: 40,
                            width: 90,
                            child: Center(
                              child: Text(
                                " 10 Minutes",
                                style: GoogleFonts.abel(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: ListTile(
                              title: Text(
                                "Flower Medatition ",
                                style: GoogleFonts.pacifico(
                                    fontSize: 18, color: Colors.black),
                              ),
                              subtitle: Text(
                                "Medatition can produce a deep\nstate of relaxation ",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 117, 69, 7)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Lottie.asset('assets/Images/med.json'),
                    ),
                  ],
                )),
            FixHeight12(),

            Stack(
              children: [
                Row(
                  children: [
                    FixWidth12(),
                    Container(
                      height: 100,
                      width: 100,
                      color: Color.fromARGB(255, 190, 156, 62),
                      child: Lottie.asset('assets/Images/med.json'),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromARGB(255, 190, 156, 62),
                      child: Column(
                        children: [
                          FixHeight12(),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 117, 69, 7),
                              ),
                              height: 35,
                              width: 70,
                              child: Center(
                                child: Text(
                                  " 10 Minutes",
                                  style: GoogleFonts.abel(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          FixHeight12(),
                          Text(
                            "Flower Medatition ",
                            style: GoogleFonts.pacifico(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 190, 156, 62),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    FixWidth12(),
                    FixWidth12(),
                  ],
                )
              ],
            ),

            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 350,
                  height: 90,
                  color: Color.fromARGB(255, 190, 156, 62),
                  child: Row(
                    children: [
                      Lottie.asset('assets/Images/med.json'),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 117, 69, 7)),
                        height: 30,
                        width: 70,
                        child: Text(
                          " 10 Minutes",
                          style: GoogleFonts.abel(
                              fontSize: 14, color: Colors.white),
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(Icons.more_vert),
                      //   alignment: Alignment.topRight,
                      // ),
                    ],
                  ),
                ),
                Column(
                  children: [],
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

