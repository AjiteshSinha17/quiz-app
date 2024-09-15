import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/queston.dart';
import 'package:quiz_app/quizapp.dart';
import 'package:quiz_app/models/result_screen.dart';


class Decor extends StatefulWidget {
  const Decor({super.key}) ;
  
 @override
 State<Decor> createState() {
  return _DecorState() ;
 }
}

class _DecorState extends State<Decor> {

 
  List<String> selectedAnswers = [] ;
  var activescreen = "start-screen" ;


 void switchscreen (){
  setState(() {
    activescreen = "question-screen" ;
  } );
 }

void chooseAnswer(String answer){
  selectedAnswers.add(answer);


  if (selectedAnswers.length == questions.length){
    setState(() {
            
      activescreen = 'result-screen' ;
    });
  }
}
 void again (){
  setState(() {
    activescreen = "question-screen" ;
  } );
 }



  @override
  Widget build (context){

   Widget screenWidget = QuizApp(switchscreen) ;


   if (activescreen == "question-screen"){
     screenWidget =  Question(
         onSelectedAnswers: chooseAnswer,) ;
        
     }

   if (activescreen == 'result-screen'){
      screenWidget =  ResultScreen(
        answersed: selectedAnswers, againQuiz: again  );
      }


  return MaterialApp(  
        home: Scaffold(

           body : Container ( 
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

         decoration : const BoxDecoration(
                  gradient: LinearGradient(
                 colors: [ Color.fromARGB(255, 77, 35, 148),
                   Color.fromARGB(255, 110, 251, 218 )
                  
                  ] ,
                  begin:Alignment.topLeft ,
                  end: Alignment.bottomRight ,
                  
                  )
          ),

        child:  screenWidget ,
                 ),
               ),
            );
          }
        } 
  