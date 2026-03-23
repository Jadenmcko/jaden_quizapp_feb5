import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questionssummary extends StatelessWidget{
  const Questionssummary({super.key, required this.SummaryData});
  final List<Map<String, Object>> SummaryData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(children: SummaryData.map((data){
      final Iscorrect = data['correct_answer'] == data['user_answer'];
      Color circleColor;
      if (Iscorrect){
        circleColor = Colors.green;
      } else {
        circleColor = Colors.red;
      }
      return Padding(padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 
        children: [
        Container(
        width: 40, height: 40, alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle,
      color: circleColor,), 
      child: Text(((data['question_index'] as int) +1).toString(),
        style: GoogleFonts.lato(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),
        ),
      ),
      const SizedBox(width: 12),
        Expanded(
          child: Column(
            children:[
              Text(data['question'] as String,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold,),),
              const SizedBox(height:5,),
              Text('Your answer is: ${data['user_answer'] as String}',
              style: GoogleFonts.lato(color: Colors.orange, fontSize: 13),),
              Text('The correct answer was: ${data['correct_answer'] as String}',
              style: GoogleFonts.lato(color: Colors.greenAccent, fontSize: 13),),
            ],
          ),
        )
    ]));
    }).toList());
}
}


// Container(decoration: BoxDecoration(shape: BoxShape.circle,
// color: Color.fromARGB(255, 0, 255, 42)), child: Text("question"),)

// return Row(children: [Text(((data['question_index'] as int) +1).toString()),
//               Expanded(
//                 child: Column(
//                   children:[
//                     Text(data['question'] as String),
//                     const SizedBox(height:5,),
//                     Text(data['user_answer'] as String),
//                     Text(data['correct_answer'] as String),
//                   ],
//                 ),
//               )]
//               );
//     }).toList()