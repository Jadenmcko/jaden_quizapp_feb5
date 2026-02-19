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
    var currentQuestionIndex = 0;
    void answerQuestion(){
      setState(() {
        // for if statement on the last question
        currentQuestionIndex++;
      });
    }
  @override
  Widget build(BuildContext context){  // columns for the page
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(width: double.infinity, child: Container(
      margin: const EdgeInsets.all(25),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Column(children: [
        Text(currentQuestion.question,
        style: const TextStyle(
          color: Colors.white, 
          fontSize: 25),
          textAlign: TextAlign.center,),
      const SizedBox(height: 30), 
      // Answersbutton(answerText: currentQuestion.answers[0], onTap: (){}),
      // Answersbutton(answerText: currentQuestion.answers[1], onTap: (){}),
      // Answersbutton(answerText: currentQuestion.answers[2], onTap: (){}),
      // Answersbutton(answerText: currentQuestion.answers[3], onTap: (){}),
      ...currentQuestion.getShuffledAnswers().map((item){
        return Answersbutton(answerText: item, onTap: answerQuestion);
      }),
      ],),],),
    ),
    );
  }
}