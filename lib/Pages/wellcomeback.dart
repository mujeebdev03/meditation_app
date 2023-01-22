import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';

import '../Commonwidgets.dart';

class WellcomeBackScreen extends StatelessWidget {
  const WellcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, actions: [
        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.person,
                size: 26.0,
              ),
            )),
      ]),
      drawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: ListTile(
              title: Text(
                "Wellcome back , name",
                style: GoogleFonts.pacifico(fontSize: 18, color: Colors.black),
              ),
              subtitle: Text(
                "How are you feeling today ? ",
                style: GoogleFonts.roboto(
                    fontSize: 18, color: Color.fromARGB(255, 117, 69, 7)),
              ),
            ),
          ),
          FixHeight12(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SmallContainerW(icon: Icon(Icons.star_border),),
                  FixHeight12(),
                  Text("Claim"),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(icon: Icon(Icons.star_border),),
                  FixHeight12(),
                  Text("Relax"),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(icon: Icon(Icons.star_border),),
                  FixHeight12(),
                  Text("Focus"),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(icon: Icon(Icons.star_border),),
                  FixHeight12(),
                  Text("Anxious"),
                ],
              ),
              

              
              
            ],
          ),
         
         FixHeight12(),
         FixHeight12(),


          Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 139, 141, 20),
          ),
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.2,
          child:  Row(
            children: [
                SizedBox(
                height: MediaQuery.of(context).size.height*0.20,
                width: MediaQuery.of(context).size.width*0.47,
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Column(
                    children: [
                      FixHeight12(),
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child:  ListTile(
                        title: Text(
                          "Cardio Medataion ",
                          style: GoogleFonts.pacifico(
                              fontSize: 14, color: Colors.black),
                        ),
                        subtitle: Text(
                          "Basic of Yogo for begginers and expecinced ",
                          style: GoogleFonts.roboto(
                              fontSize: 12, color: Colors.white),
                        ),
                      ) 
                      ),
                      FixHeight12(),
                     Container(
          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              ),
                       height: MediaQuery.of(context).size.height*0.05,
                width: MediaQuery.of(context).size.width*0.4,
                          child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 117, 69, 7),
                            ),
  onPressed: () {},
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Start Medatition', style: TextStyle(
        fontSize: 12
      ),), // <-- Text
      SizedBox(
        width: 6,
      ),
      Icon( // <-- Icon
        Icons.play_circle,
        size: 18.0,
      ),
                  
    ],
  ),
),
                        ),
                    
                    ],
                  ),
                ),
              ),
              Container(
                child: Lottie.asset('assets/Images/med.json'),
              ),
            ],
          )


        ) , 
        FixHeight12(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            
            child: Text(
              
                              "Recommended ",
                              style: GoogleFonts.abel(
                                  fontSize: 26, color: Colors.black),
                            ),
          ),
        ),
        FixHeight12(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            commonWellcomescreencontainer(
              pic: 'assets/Images/yoga2.png',
              textR:'Restortive', 
              textB: '20 Sessions'
              ),
              commonWellcomescreencontainer(
              pic: 'assets/Images/yoga2.png',
              textR: 'Energize', 
              textB: '15 Sessions')

          ],
        )
        ],
      
        
      ),
    ));
  }
}

class commonWellcomescreencontainer extends StatelessWidget {
   commonWellcomescreencontainer({
    required this.pic,
    required this.textR,
    required this.textB,
    
    Key? key,
  }) : super(key: key);
  String pic;
  String textR;
  String textB;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          
                  width: MediaQuery.of(context).size.width*0.4,
                  height: MediaQuery.of(context).size.height*0.15,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 206, 221),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    
                    image: AssetImage('$pic',
                    
                    
                    ))

                  ),
                
        ),
    
        Center(
        child: SizedBox(
        width: MediaQuery.of(context).size.width*0.4,
                  height: MediaQuery.of(context).size.height*0.14,
          child: Center(
            child: Stack(
              
              fit: StackFit.expand,
             
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    color: Color.fromARGB(255, 231, 206, 221),
                  ),
                 width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.12,

                ), //Container
               //Container
                Center(
                 
                  child: Container(
                   width: MediaQuery.of(context).size.width*0.35,
                  height: MediaQuery.of(context).size.height*0.09,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 117, 69, 7),
                        
                      ),
                    
                    ),
                    child:Column(
                      children: [
                        Text(" $textR", style: GoogleFonts.arsenal(fontWeight: FontWeight.bold),),
                        SizedBox(
                          child:
                           TextButton(
                    style:ElevatedButton.styleFrom(
                     
                    ),
                  onPressed: () {},
                  child: Row(

                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon( // <-- Icon
                        Icons.play_circle,
                        size: 15.0,
                          color: Color.fromARGB(255, 117, 69, 7),
                      ),
                      Text('$textB', style: TextStyle(
                        fontSize: 12,
                          color: Color.fromARGB(255, 117, 69, 7),
                      ),), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                      
                                  
                    ],
                  ),
                ), 
                                                  
                        )
                      ],
                    )
                  ),
                ), //Container
              ], //<Widget>[]
            ), //Stack
          ), //Center
        ), //SizedBox
      ) 
      ],
    );
  }
}
