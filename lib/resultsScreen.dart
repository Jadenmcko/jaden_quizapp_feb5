import 'package:flutter/material.dart';
import 'package:jaden_quizapp_feb5/data/questions.dart';
import 'package:jaden_quizapp_feb5/questionsSummary.dart';
class Resultsscreen extends StatelessWidget{
const Resultsscreen({super.key, required this.chooseAnswers, required this.restartQuiz,});
final List<String> chooseAnswers;
final void Function() restartQuiz;
List<Map<String, Object>> getSummaryData(){
  List<Map<String, Object>> summary = [];
  for(var i = 0; i < chooseAnswers.length; i++){
    summary.add({
      'question_index':i,
      'question':questions[i].question,
      'correct_answer':questions[i].answers[0],
      'user_answer':chooseAnswers[i]
    });
  }
  return summary;
}
  @override
  Widget build(context)
  {
    final SummaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numTotalCorrect = SummaryData.where(
    (data){
      return data['correct_answer'] == data['user_answer'];
    }
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('You answered $numTotalCorrect out of $numTotalQuestions questions correctly'),
            const SizedBox(height:30,),
            Questionssummary(SummaryData: SummaryData),
            // const Text('List of Answers and Questions'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: restartQuiz,
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}