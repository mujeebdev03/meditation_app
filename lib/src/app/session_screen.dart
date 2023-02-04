import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';
import 'package:med_app_/src/app/take_care_screen.dart';

import '../../CommonWidgets.dart';


class SessionScreen extends StatelessWidget {
  const SessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Column(
                  children: [
                    Text('Medatition',
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                          '  Basics Exercise for \n  begginers or Expercinced',style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Image.asset('assets/Images/yoga2.png'),
                )
              ],
            ),
            FixHeight12(),
            FixHeight12(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    common_sessions(
                    ),
                    common_sessions(),
                  ],
                )
              ],
            ),
            FixHeight12(),
            FixHeight12(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    common_sessions(),
                    common_sessions(),
                  ],
                )
              ],
              
            ),
            FixHeight12(),
              Column(
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 238, 156, 150),
                    ),
                    child:Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
                        alignment: Alignment.topRight,
                        height: MediaQuery.of(context).size.height*0.02,
                       width: MediaQuery.of(context).size.width*1,
                        child:IconButton(onPressed: (){

                        }, icon:Icon(Icons.more_vert,color: Colors.white,))
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text('Weekly Goals'),
                          
                        ),
                        FixHeight12(),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.01, 
                  width: MediaQuery.of(context).size.width*0.6,
                  color: Colors.grey,

                          ),
                        ),
                     
                      ],
                    ),
                  height: MediaQuery.of(context).size.height*0.1, 
                  width: MediaQuery.of(context).size.width*0.9,
              
            ),
            
       ],
      ),

      Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text('  This Week Status',style: GoogleFonts.aBeeZee(
              fontSize: 28,
              
            ),),
          ),
          FixHeight12(),
          Container(
              height: MediaQuery.of(context).size.height*0.1, 
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      WeekStatusContainer(),
                      WeekStatusContainer(),
                        ],
                      ),
                    ),
                    FixHeight12(),
                    FixHeight12(),
        Center(
          child: WeekStatusContainer()
        )
        
        ],
      ),
      FixHeight12(),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mon',style:GoogleFonts.aBeeZee(),),
                 Text('Tue',style:GoogleFonts.aBeeZee(),),
                  Text('Wed',style:GoogleFonts.aBeeZee(),),
                   InkWell(child: Text('Thur',style:GoogleFonts.aBeeZee(),),
                   onTap: (){
                    Get.to(TakeCareScreen());
                   },
                   ),
                   
              ],
            ),
          ),
       ],
        ),
      ),
    ));
  }
}

class WeekStatusContainer extends StatelessWidget {
  const WeekStatusContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.4,
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








class common_sessions extends StatelessWidget {
  const common_sessions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 206, 164, 109),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.play_circle,
              size: 22.0,
            ),
            fixwidth6(),
            Text(
              'Start Medatition',
              style: GoogleFonts.aBeeZee(
                fontSize: 10
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///////fix width6
class fixwidth6 extends StatelessWidget {
  const fixwidth6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 6,
    );
  }
}
