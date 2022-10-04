import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeNotifier with ChangeNotifier {

  String thm = "B";

  static ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        headline1: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.w600,
        ),//iMessage info name
        headline2: TextStyle(                 //calendar heading
          fontWeight: FontWeight.w400,
          fontSize: 15,
        )
    ),
    fontFamily: "SF",
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,

  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
        displayLarge: GoogleFonts.kumbhSans(
          fontWeight: FontWeight.w500,
          fontSize: 130,
          color: const Color(0xff0f51b0),
        ),
        displayMedium: GoogleFonts.kumbhSans(
          fontWeight: FontWeight.w400,
          fontSize: 45,
          color: const Color(0xff0f51b0),
        ),
      displaySmall: GoogleFonts.kumbhSans(
        fontWeight: FontWeight.w300,
        fontSize: 35,
        color: const Color(0xff0f51b0),
      ),
      bodyLarge: GoogleFonts.kumbhSans(
        fontWeight: FontWeight.w400,
        fontSize: 48,
        color: Color(0xff868686),
      ),
      bodySmall: GoogleFonts.kumbhSans(
          fontWeight: FontWeight.w300,
          fontSize: 30,
          color: const Color(0xff868686),
        ),
      bodyMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w400,
        fontSize: 35,
        color: Color(0xff868686),
      ),
      labelLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Color(0xff868686),
      ),
      labelSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 25,
        color: Color(0xff868686),
      ),
      headlineLarge: GoogleFonts.kumbhSans(
        fontWeight: FontWeight.bold,
        fontSize: 35,
        color: Colors.blue,
      ),
      headlineSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 30,
        color: Color(0xff868686),
      ),
    ),
    fontFamily: "SF",
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: const Color(0xff242127),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff242127),
        elevation: 0,
        enableFeedback: false,
        hoverElevation: 10,
        splashColor: Colors.blueAccent,
        extendedPadding: EdgeInsets.zero,

      ),
    appBarTheme: AppBarTheme(
      color: Color(0xff074177),
    ),
    cardColor:  Color(0xff074177),
  );

  ThemeData _themeData;
  ThemeNotifier(this._themeData);
  getTheme() => _themeData;
  String get findThm => thm;

  isDark() => _themeData==lightTheme?false:true;


  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    thm=(themeData==lightTheme)?"B":"B";
    notifyListeners();
  }

// ThemeNotifier() {
//   StorageManager.readData('themeMode').then((value) {
//     print('value read from storage: ' + value.toString());
//     themeMode = value ?? 'light';
//     if (themeMode == 'light') {
//       _themeData = lightTheme;
//      // dark=false;
//     } else {
//       print('setting dark theme');
//       _themeData = darkTheme;
//      //dark=true;
//     }
//     notifyListeners();
//   });
// }
//
//
//
// void setDarkMode() async {
//   _themeData = darkTheme;
//   StorageManager.saveData('themeMode', 'dark');
//   notifyListeners();
// }
//
// void setLightMode() async {
//   _themeData = lightTheme;
//   StorageManager.saveData('themeMode', 'light');
//   notifyListeners();
//
// }

}
