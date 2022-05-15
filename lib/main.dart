import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clubhouse UI",
      theme:ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor:Color(0xFFF2F0E4) ),
        scaffoldBackgroundColor:const Color(0xFFF2F0E4),
        primaryColor: Colors.white,
        accentColor: const Color(0xFF27AE61),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
        iconTheme: const IconThemeData(color: Colors.black),



      ) ,

      home: const HomeScreen(),

    );
  }
}
