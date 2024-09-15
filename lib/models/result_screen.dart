import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary.dart/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.againQuiz, required this.answersed});

  final void Function() againQuiz;
  final List<String> answersed;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answersed.length; i++) {
      summary.add({
        'questionindex': i,
        'question': questions[i].text,
        'correctanswer': questions[i].answers[0],
        'user_answer': answersed[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numQuestion = questions.length;

    final numcorrectQuestion = summaryData.where((data) {
      return data['user_answer'] == data['correctanswer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Total Score of Your  Quiz is $numcorrectQuestion out of $numQuestion'),
            const SizedBox(height: 30),
            QuestionSummary(summmaryData: getSummaryData()),
            const SizedBox(height: 31),
            TextButton(
                onPressed: () {
                  againQuiz;
                },
                child: const Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
