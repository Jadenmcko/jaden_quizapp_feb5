import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jaden_quizapp_feb5/answersButton.dart';
import 'package:jaden_quizapp_feb5/data/questions.dart';
class questionScreen extends StatefulWidget{
  const questionScreen({super.key});
  State<questionScreen> createState(){
    return _questionScreenState();
  }
}
class _questionScreenState extends State<questionScreen>{
  @override
  Widget build(BuildContext context){  // columns for the page
    final currentQuestion = questions[0];
    return SizedBox(width: double.infinity, child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [ Text(currentQuestion.question),
    Column(children: [const Text('This is the question',
    style: TextStyle(color: Colors.white, fontSize: 25),),
    const SizedBox(height: 30), 
    Answersbutton(answerText: currentQuestion.answers[0], onTap: (){}),
    Answersbutton(answerText: currentQuestion.answers[1], onTap: (){}),
    Answersbutton(answerText: currentQuestion.answers[2], onTap: (){}),
    Answersbutton(answerText: currentQuestion.answers[3], onTap: (){}),
    ],),],),
    );
  }
}