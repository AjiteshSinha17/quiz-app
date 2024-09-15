import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';


class Question extends StatefulWidget{
 const Question({super.key , required this.onSelectedAnswers}) ;
 
 final void Function ( String answer) onSelectedAnswers;

@override
State<Question> createState(){
 return _QuestionState() ;
  }
}



class _QuestionState extends State<Question> {

var questionindex = 0 ;

void answerQuestion(String selectedAnswers){

  widget.onSelectedAnswers(selectedAnswers);

  setState(() {
      questionindex ++ ;
      
  });
}

@override
 Widget build(context){

  final currentQuestion = questions[questionindex];
    return  SizedBox(
    
      width: double.infinity ,
      child: Container(

        margin: const EdgeInsets.all(40),

      
          child: Column( 
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          
            Text(  currentQuestion.text , 
             
           
            textAlign: TextAlign.center ,
          
            
            style: GoogleFonts.tiltPrism(
              fontWeight: FontWeight.bold,
              color : Colors.white ,
              textStyle : const TextStyle(fontSize: 18)
            ) ,
               
               ),
            
            const SizedBox(height: 50) ,
                
          ...currentQuestion.getshuffledAnswers().map((answer1){ 
            
             return AnswerButton(answer: answer1 ,
                   ontap: (){
              
                   answerQuestion(answer1);
             },
                  
                  );
               }
            )
          ]    
                ),
        ) ,
    )
     ;
  }
}