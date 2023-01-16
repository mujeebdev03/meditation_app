import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'Const.dart';

///////Small Container Wellcome Screen
class SmallContainerW extends StatelessWidget {
  SmallContainerW({
    required this.icon,
    Key? key,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 60,
      child: Icon(
        Icons.star,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 190, 156, 62),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}





//////////Med_Screen_Containers

class Med_Screen_Reusable_Container extends StatelessWidget {
  const Med_Screen_Reusable_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15,top: 10,bottom: 10),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 117, 69, 7),
          ),
          width: 500,
          height: 160,
          child: Row(
            children: [
             
              SizedBox(
                height: 120,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Container(
          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 190, 156, 62)),
                          height: 30,
                          width: 100,
                          child: Center(
                            child: Text(
                              " 10 Minutes",
                              style: GoogleFonts.abel(
                                  fontSize: 15, color: Color.fromARGB(255, 117, 69, 7),),
                            ),
                          ),
                        ),
                      ),
                      FixHeight12(),
                      ListTile(
                        title: Text(
                          "Take Nature Year ",
                          style: GoogleFonts.pacifico(
                              fontSize: 15, color: Colors.white),
                        ),
                        subtitle: Text(
                          "Basics of yoga for begginers and exepercinced ",
                          style: GoogleFonts.roboto(
                              fontSize: 10, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Lottie.asset('assets/Images/med.json'),
              ),
            ],
          )),
    );
  }
}