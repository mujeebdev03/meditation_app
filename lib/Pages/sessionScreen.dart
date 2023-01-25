import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:med_app_/Const.dart';
import '../CommonWidgets.dart';
import '../Commonwidgets.dart';

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
              children: [
                Column(
                  children: [
                    Text('Medatition',
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                          '  Basics Exercise for \n  begginers or Expercinced'),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.48,
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
                    common_sessions(),
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
          ],
        ),
      ),
    ));
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
              style: TextStyle(fontSize: 12),
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
