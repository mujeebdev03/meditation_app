import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';
import 'package:med_app_/src/app/session_screen.dart';
import '../../CommonWidgets.dart';

class wellcomeBackScreen extends StatelessWidget {
  const wellcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, actions: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 26.0,
              ),
            ),
          ),
          onTap: () {},
        ),
      ]),
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
                  SmallContainerW(
                    icon: Icon(Icons.star_border),
                  ),
                  FixHeight12(),
                  Text(
                    "Claim",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(
                    icon: Icon(Icons.star_border),
                  ),
                  FixHeight12(),
                  Text(
                    "Relax",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(
                    icon: Icon(Icons.star_border),
                  ),
                  FixHeight12(),
                  Text(
                    "Focus",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ],
              ),
              Column(
                children: [
                  SmallContainerW(
                    icon: Icon(Icons.star_border),
                  ),
                  FixHeight12(),
                  Text(
                    "Anxious",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ],
              ),
            ],
          ),
          FixHeight12(),
          FixHeight12(),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orangeAccent),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Column(
                        children: [
                          FixHeight12(),
                          Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: ListTile(
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
                              )),
                          FixHeight12(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 117, 69, 7),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    child: Text(
                                      'Start Medatition',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 10,
                                      ),
                                    ),
                                    onTap: () {
                                      Get.to(SessionScreen());
                                    },
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Icon(
                                    // <-- Icon
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
              )),
          FixHeight12(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recommended ",
                style: GoogleFonts.abel(fontSize: 26, color: Colors.black),
              ),
            ),
          ),
          FixHeight12(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              RecommendedWidget(
                  pic: 'assets/Images/yoga2.png',
                  textR: 'Restortive',
                  textB: '20 Sessions'),
              RecommendedWidget(
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

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    super.key,
    required this.pic,
    required this.textR,
    required this.textB,
  });

  final String pic;
  final String textR;
  final String textB;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.27,
      width: context.width * 0.45,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Colors.red,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: context.height * 0.23,
              width: context.width * 0.45,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 231, 206, 221),
              ),
              child: Container(
                  width: context.width * 0.35,
                  height: context.height * 0.09,
                  margin: const EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 117, 69, 7),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        textR,
                        style: GoogleFonts.arsenal(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.play_circle,
                              size: 15.0,
                              color: Color.fromARGB(255, 117, 69, 7),
                            ),
                            Text(
                              textB,
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Image(
            image: AssetImage(pic),
            height: context.height * 0.15,
            width: context.width * 0.45,
          )
        ],
      ),
    );
  }
}
