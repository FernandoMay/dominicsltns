// import 'package:dominicsltns/home.dart';
// import 'package:dominicsltns/homev.dart';
import 'package:dominicsltns/constants.dart';
import 'package:dominicsltns/homevw.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

CupertinoThemeData ctheme() {
  return const CupertinoThemeData(
    barBackgroundColor: Color(0xFFFCE9F1),
    scaffoldBackgroundColor: Color(0xFFFCE9F1),
    primaryColor: Color(0xFF73BBC9),
    primaryContrastingColor: Color(0xFFF1D4E5),
    brightness: Brightness.light,
    textTheme: CupertinoTextThemeData(
      primaryColor: Constants.goldColor,
      navTitleTextStyle: TextStyle(
        color: Constants.goldColor, // This is where you use the gold color
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textStyle: TextStyle(
        color:
            Constants.goldColor, // You can define a default text color as well
        fontSize: 16,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Dominic Sltns',
      theme: ctheme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
