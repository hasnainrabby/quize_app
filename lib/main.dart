import 'package:flutter/material.dart';
import 'package:quize_app/ui/home.dart';

final ThemeData _appTheme = _buildAppTheme();
  ThemeData _buildAppTheme(){
  final ThemeData base = ThemeData.dark();
      return base.copyWith(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey,
        primaryColor: Colors.black38,
      );
}
void main() => runApp(MaterialApp(
  home: QuizApp(),
theme: _appTheme
  ));



