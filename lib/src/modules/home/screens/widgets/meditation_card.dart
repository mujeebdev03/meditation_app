import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/src/extensions/aspect_ratio.dart';
import 'package:med_app_/src/utils/app_textstyles.dart';

class MeditationCardWidget extends StatelessWidget {
  MeditationCardWidget({
    required this.buttonText,
    required this.title,
    required this.subTitle,
    required this.backgroundColor,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.lottieAnimation,
    Key? key,
  }) : super(key: key);

  String buttonText;
  String title;
  String subTitle;
  Color backgroundColor;
  Color buttonColor;
  Color buttonTextColor;
  dynamic lottieAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        padding:
            const EdgeInsets.only(left: 15.0, right: 15, top: 10, bottom: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        height: context.height * 0.2,
        child: Row(
          children: [
            SizedBox(
              height: context.height * 0.24,
              width: context.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor),
                      height: context.height * 0.04,
                      width: context.width * 0.4,
                      child: Center(
                        child: Text(
                          buttonText,
                          style:GoogleFonts.aBeeZee(
                            fontSize: 12,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        title,
                        style:GoogleFonts.aBeeZee(fontSize: 15, color: Colors.white),
                      ),
                      subtitle: Text(
                        subTitle,
                        style: GoogleFonts.aBeeZee(fontSize: 10, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              
              width: MediaQuery.of(context).size.width*0.3,
              child: Lottie.asset('$lottieAnimation'),
            ),
          ],
        ));
  }
}
