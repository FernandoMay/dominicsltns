import 'package:dominicsltns/home.dart';
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
      primaryColor: Color(0xFF080202),
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
      home: Home(),
    );
  }
}
