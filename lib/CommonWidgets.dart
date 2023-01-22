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
       height: MediaQuery.of(context).size.height*0.1 , 
         width: MediaQuery.of(context).size.width*0.2,
         
      child: Icon(
        Icons.boy,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 215, 137),
        borderRadius: BorderRadius.circular(10),
      ),
    
    );
  }
}





//////////Med_Screen_Containers

class Med_Screen_Reusable_Container extends StatelessWidget {
   Med_Screen_Reusable_Container({
    required this.text10mint,
    required this.Text1,
    required this.Text2,
    required this.Container_Color,
    required this.small10,
    required this.small10text,
    required this.lottieI,
    
    Key? key,
  }) : super(key: key);

  String text10mint,Text1,Text2;
  Color Container_Color,small10,small10text;
  final lottieI;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15,top: 10,bottom: 10),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Container_Color,
          ),
          width: MediaQuery.of(context).size.width*1,
          height: MediaQuery.of(context).size.height*0.2,
          child: Row(
            children: [
             
              SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.47,
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Container(
          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: small10),
                       height: MediaQuery.of(context).size.height*0.04,
                width: MediaQuery.of(context).size.width*0.3,
                          child: Center(
                            child: Text(
                              " $text10mint",
                              style: GoogleFonts.abel(
                                  fontSize: 15, color: small10text,),
                            ),
                          ),
                        ),
                      ),
                     
                      ListTile(
                        title: Text(
                          "$Text1 ",
                          style: GoogleFonts.pacifico(
                              fontSize: 15, color: Colors.white),
                        ),
                        subtitle: Text(
                          "$Text2 ",
                          style: GoogleFonts.roboto(
                              fontSize: 10, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Lottie.asset('$lottieI'),
              ),
            ],
          )),
    ); 
  }
}
/////////c
///

