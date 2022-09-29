import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeNotifier with ChangeNotifier {

  String thm = "B";

  static final ThemeData lightTheme = ThemeData(
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

  static final ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
        headline1: GoogleFonts.kumbhSans(
          fontWeight: FontWeight.w500,
          fontSize: 140,
          color: Colors.blueAccent,
        ),
        headline2: GoogleFonts.kumbhSans(
          fontWeight: FontWeight.w500,
          fontSize: 50,
          color: Colors.blueAccent,
        ),
      headline3: GoogleFonts.kumbhSans(
        fontWeight: FontWeight.w300,
        fontSize: 35,
        color: Colors.blueAccent,
      ),

    ),
    fontFamily: "SF",
    primarySwatch: Colors.deepOrange,
    scaffoldBackgroundColor: const Color(0xff242127),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff242127),
        elevation: 0,
        enableFeedback: false,
        hoverElevation: 10,
        splashColor: Colors.blueAccent,
        extendedPadding: EdgeInsets.zero,

      ),

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
