import 'package:flutter/material.dart';

import '../model/question.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  int _currentQuestionIndex = 0;

  List questionBank = [
     Question.name("In 1971 Bangladesh got independence from Pakistan ",true),
     Question.name("Bangladesh shares land borders with India & Nepal ",false),
     Question.name("Cox's Bazar is located in Nepal",false),
     Question.name("Lalbagh Fort is located in Bangladesh",true),
     Question.name("Bangladesh's flag look like Green background with red circle in centre",true),
     Question.name("Rose is the national flower of Bangladesh",false),
     Question.name("Brahmaputra originates in Tibet",true),
     Question.name("Islam is the main religion practiced in Bangladesh",true),
     Question.name("Utc-5 is the Time Zone of Bangladesh",false),
     Question.name("Jatiyo Shangshad is the name of national parliament of Bangladesh",true),
     Question.name("Indian sea lies to the south of Bangladesh",false),
     Question.name("Before the 1950's Jute was the principle crop of Bangladesh",true),
     Question.name("Bangladesh is completely surrounded by India",true),
     Question.name("Padma flows across the India-Bangladesh border",false),
     Question.name("One of the world's largest mangrove forests are The Sundarban",true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BD GK Test"),
        centerTitle: true,
      //  backgroundColor: Colors.blueGrey,
      ),
     // backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/bdflag.png",width: 280,height: 200,)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blueGrey.shade400,style: BorderStyle.solid)
                ),
                height: 120.0,
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(questionBank[_currentQuestionIndex].questionText,style: TextStyle(fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                    onPressed: () => _prevQuestion() ,
                    child: Icon(Icons.arrow_back,color: Colors.white,)),

                ElevatedButton(
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () => _checkAnswer(true,context) ,
                  child: Text("TRUE",style: TextStyle(color: Colors.white),),),

                ElevatedButton(
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () => _checkAnswer(false,context) ,
                  child: Text("FALSE",style: TextStyle(color: Colors.white),),),

                ElevatedButton(
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900)),
                  onPressed: () => _nextQuestion() ,
                  child: Icon(Icons.arrow_forward,color: Colors.white,))

              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
  _checkAnswer(bool userChoice , BuildContext context){
    if(userChoice == questionBank[_currentQuestionIndex].isCorrect){
      //correct answer
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: const Text("It's Correct!"),
        backgroundColor: Colors.limeAccent.shade700,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _updateQuestion();
    }else{
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: const Text("It's Incorrect!"),
        backgroundColor: Colors.redAccent.shade700,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _updateQuestion();
    }
  }
   _updateQuestion(){
     setState(() {
       _currentQuestionIndex = (_currentQuestionIndex + 1) % questionBank.length;
     });
   }
  _prevQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex - 1) % questionBank.length;
    });

  }
  _nextQuestion() {

    _updateQuestion();

  }


}
