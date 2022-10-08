import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const startBackgroudDec = BoxDecoration(
    image: DecorationImage(
  image: AssetImage("assets/images/start_background.PNG"),
  fit: BoxFit.cover,
));

const mainColor = Color.fromARGB(255, 22, 145, 155);
const sendMesgBac = Color.fromARGB(255, 246, 247, 248);
const chatgrey = Color.fromARGB(255, 223, 232, 235);

final oranosTextStyle = TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50.sp);

final subTitleTextStyle =
    TextStyle(color: const Color.fromARGB(255, 95, 95, 95), fontSize: 19.sp);

final btnTxtStyle = TextStyle(color: Colors.white, fontSize: 18.sp);

final size9gray = TextStyle(color: Colors.grey, fontSize: 11.sp);

final dontTxtStyle = TextStyle(fontSize: 12.sp);

final signUpTxtStyle = TextStyle(fontSize: 12.sp, color: mainColor);
final size15 = TextStyle(fontSize: 15.sp);
final size19 = TextStyle(fontSize: 19.sp);
final lightDarkTxtStyle = TextStyle(fontSize: 14.sp, color: Colors.grey);

const mainBTNDec = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(6)), color: mainColor);

const textFormDec = BoxDecoration(
  color: sendMesgBac,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  // border: Border.all(color: Colors.grey),
);

const oraChatBubble = BoxDecoration(
  color: sendMesgBac,
  borderRadius: BorderRadius.all(Radius.circular(10)),
);

const chatBubble = BoxDecoration(
  color: mainColor,
  borderRadius: BorderRadius.all(Radius.circular(10)),
);

final customLightThemeData = ThemeData(
  primaryColor: mainColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1.0,
    actionsIconTheme: IconThemeData(color: Colors.black),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    elevation: 1.0,
  ),
);
