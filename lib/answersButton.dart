import 'package:flutter/material.dart';
class Answersbutton extends StatelessWidget{
  const Answersbutton({required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context){
    return 
    ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        backgroundColor: const Color.fromARGB(255, 211, 169, 212),
      foregroundColor: Colors.white),
      child: Text(answerText),
    );
  }
}