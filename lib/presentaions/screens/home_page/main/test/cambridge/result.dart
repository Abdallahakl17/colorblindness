// import 'package:flutter/material.dart';

// class ResultScreen extends StatelessWidget {
//   final List<String> correctAnswers;
//   final List<String> userAnswers;

//   const ResultScreen({
//     super.key, 
//     required this.correctAnswers, 
//     required this.userAnswers,
//   });

//   @override
//   Widget build(BuildContext context) {
//     int correctCount = 0;
//     for (int i = 0; i < correctAnswers.length; i++) {
//       if (correctAnswers[i] == userAnswers[i]) {
//         correctCount++;
//       }
//     }
//     double accuracy = (correctCount / correctAnswers.length) * 100;

//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Correct answers: $correctCount/${correctAnswers.length}'),
//             Text('Accuracy: ${accuracy.toStringAsFixed(2)}%'),
//           ],
//         ),
//       ),
//     );
//   }
// }
