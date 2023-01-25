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
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
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

//////////////common



/////////common_sessions




