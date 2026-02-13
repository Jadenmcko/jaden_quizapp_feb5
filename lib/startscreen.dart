import "package:flutter/material.dart";
class Startscreen extends StatelessWidget{
  const Startscreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(colors:[Color.fromARGB(255, 92, 205, 195), Color.fromARGB(255, 234, 34, 89)], 
      //   begin: AlignmentGeometry.topLeft, 
      //   end: Alignment.bottomRight,)
      // ),
      child: Center(child: 
        Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset('assets/images/quiz-logo.png', width: 280, color: Color.fromARGB(255, 255, 255, 255),),
          const SizedBox(height: 80),
          Text("Test your limits with this Quiz!",
            style: TextStyle(color: Colors.white, fontSize: 20),),
          const SizedBox(height: 25),
          OutlinedButton.icon(onPressed: startQuiz,
          icon: const Icon(Icons.arrow_circle_right_outlined),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: Text("Start Quiz"),
          )
            ],)
      ),
    );
  }
}