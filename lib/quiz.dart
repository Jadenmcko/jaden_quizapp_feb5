import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jaden_quizapp_feb5/questionScreen.dart';
import 'package:jaden_quizapp_feb5/startscreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  Widget? activeScreen;
  void switchScreen(){
    setState(() {
      activeScreen = questionScreen();
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