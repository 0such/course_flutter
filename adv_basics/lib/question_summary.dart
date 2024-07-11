import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: data['correct_answer'] == data['user_answer'] ? Colors.blue : Colors.pink,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 167, 112, 180),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 124, 151, 233),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
