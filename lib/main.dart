

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quize_app/ui/home.dart';

final ThemeData _appTheme = _buildAppTheme();
  ThemeData _buildAppTheme(){
  final ThemeData base = ThemeData.dark();
      return base.copyWith(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey,
        primaryColor: Colors.black38,
        textTheme: TextTheme(base.textTheme),
      );
}

TextTheme(base){
    return base.copyWith(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold,fontFamily: "KaushanScript"),
    );
}

void main() => runApp(MaterialApp(
  home: QuizApp(),
theme: _appTheme
  ));



