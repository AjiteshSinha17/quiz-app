import 'package:flutter/material.dart';


class QuizApp extends StatelessWidget {
 const QuizApp( this.startQuiz,{super.key}) ;

 final  void Function() startQuiz ;


 @override

 Widget build(context){

 return Padding(
   padding: const EdgeInsets.all(20),
      child: Column (
             mainAxisSize: MainAxisSize.min,
               children: [ const Spacer(),Image.asset(
                   'assets/images/quiz-logo.png' ,
   
                    width: 200 ,
                  ),
                
                const SizedBox(height: 82) ,
   
                 const Text( 'Learn Flutter the fun  Way !!' , 
            style: TextStyle( fontSize: 25 ,
                          fontStyle: FontStyle.italic , 
                          color: Colors.yellowAccent
              ),
           ) ,
         
            const SizedBox(height: 50) ,

           OutlinedButton(onPressed: (){
   
             startQuiz() ;
           } , 
   
                   style : TextButton.styleFrom(
                     foregroundColor: const Color.fromARGB(137, 0, 0, 0) ,
                       textStyle: const TextStyle(
                         fontSize: 26 ,
                            fontStyle: FontStyle.italic )
                        ),
                    
                  child: const Text('Start Quiz'),
                )     , 

       const SizedBox(height :150) ] 
     ),
   );
 }


}