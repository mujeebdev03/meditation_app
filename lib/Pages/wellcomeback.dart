import 'package:flutter/material.dart';
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
              SmallContainerW(icon: Icon(Icons.star)),
              SmallContainerW(icon: Icon(Icons.add)),
              SmallContainerW(icon: Icon(Icons.add)),
              SmallContainerW(icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
    ));
  }
}
