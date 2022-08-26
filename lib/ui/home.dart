import 'package:flutter/material.dart';

import '../model/question.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List questionBank = [
     Question.name("In 1971 Bangladesh got independence from Pakistan ",true),
     Question.name("Bangladesh shares land borders with India & Nepal ",false),
     Question.name("Cox's Bazar is located in Nepal",false),
     Question.name(" Lalbagh Fort is located in Bangladesh",true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BD GK Test"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/bdflag.png",width: 280,height: 200,)),
            Container(
              height: 120.0,
              child: Text(questionBank[3].questionText),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
