import 'package:flutter/widgets.dart';
class questionScreen extends StatefulWidget{
  const questionScreen({super.key});
  State<questionScreen> createState(){
    return _questionScreenState();
  }
}
class _questionScreenState extends State<questionScreen>{
  @override
  Widget build(BuildContext context){
    return Text("Question Screen");
  }
}