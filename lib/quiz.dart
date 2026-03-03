import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jaden_quizapp_feb5/data/questions.dart';
import 'package:jaden_quizapp_feb5/questionScreen.dart';
import 'package:jaden_quizapp_feb5/resultsScreen.dart';
import 'package:jaden_quizapp_feb5/startscreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length);
    setState(() {
      selectedAnswers = [];
      activeScreen = Resultsscreen(chooseAnswers: selectedAnswers,);
    });
  }

  Widget? activeScreen;
  void switchScreen(){
    setState(() {
      activeScreen = questionScreen(onSelectedAnswer: chooseAnswer);
    });
  }
  void initState(){
    activeScreen = Startscreen(switchScreen);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement
    return MaterialApp(home: Scaffold(body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[Color.fromARGB(255, 92, 205, 195), Color.fromARGB(255, 234, 34, 89)], 
        begin: AlignmentGeometry.topLeft, 
        end: Alignment.bottomRight,)
      ),
      child: activeScreen,
      ),),);
  }
}