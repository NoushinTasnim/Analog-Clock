import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';


ThemeData themeData(BuildContext context) {
  return ThemeData(
    canvasColor: kSurfaceLightColor,
    appBarTheme: appBarTheme,
    hoverColor: Colors.white,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xffedf1fd),
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
      surface: kSurfaceLightColor2,
      // on light theme surface = Colors.white by default
    ),
    dividerColor: kPrimaryIconDarkColor,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(
        color: kPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline1: TextStyle(
          color: kTitleTextLightColor,
          fontSize: 64,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    hoverColor: Colors.black,
    canvasColor: kSurfaceDarkColor2,
    scaffoldBackgroundColor: Color(0xFF14254f),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    dividerColor: kPrimaryIconLightColor,
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(
        color: kPrimaryColor,
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(color: kBodyTextColorDark),
      headline4: TextStyle(
          color: kTitleTextDarkColor,
          fontSize: 32),
      headline1: TextStyle(
          color: kTitleTextDarkColor,
          fontSize: 64,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  foregroundColor: Colors.transparent,
);
