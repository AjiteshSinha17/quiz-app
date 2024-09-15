import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summmaryData});

  final List<Map<String, Object>> summmaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summmaryData.map((data) {
            return Row(
              children: [
                Text(((data['questionindex'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(data['user_answer'] as String),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(data['correctanswer'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
