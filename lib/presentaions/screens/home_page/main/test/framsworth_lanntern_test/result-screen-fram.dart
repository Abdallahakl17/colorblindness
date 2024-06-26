import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class ResultScreenFram extends StatelessWidget {
  final List<String> correctAnswers = [
    
    "Up- Red, Down-Green",
    "Up- Red, Down-Yellow",
    "Up-Red, Down-Red",
    //yellow
    "Up-Yellow, Down-Green",
    "Up-Yellow, Down-Red",
    "Up-Yellow, Down-Yellow",
    //green
    "Up-Green, Down-Green",
    "Up-Green, Down-Red",
    "Up-Green, Down-Yellow",
  ];

  final List<String> userAnswers = [
    //red
   
    "Up- Red, Down-Green",
    "Up- Red, Down-Red",
    "Up-Red, Down-Red",
    //yellow
    "Up-Red, Down-Green",
    "Up-Red, Down-Red",
    "Up-Red, Down-Red",
    //green
    "Up-Green, Down-Green",
    "Up-Green, Down-Red",
    "Up-Green, Down-Red",
  ];

  final List<String> images = [
    //red
    AppImages.red1,
    AppImages.red2,
    AppImages.red3,
    //yellow
    AppImages.yellow1,
    AppImages.yellow2,
    AppImages.yellow3,
    //green
    AppImages.green1,
    AppImages.green2,
    AppImages.green3,
  ];

  ResultScreenFram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildResultCard(context, height, width),
              SizedBox(height: height * 0.05),
              _buildDetailsCard(context, height, width),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultCard(BuildContext context, double height, double width) {
    int correctCount = 0;
    List<String> falseAnswers = [];
    for (int i = 0; i < correctAnswers.length; i++) {
      if (correctAnswers[i] == userAnswers[i]) {
        correctCount++;
      } else {
        falseAnswers.add(userAnswers[i]);
      }
    }
double accuracy = (correctCount / correctAnswers.length) * 100;

String colorTypeStatus;
if (accuracy == 100) {
  colorTypeStatus = "No Color Blindness"; // لا يوجد عمى لوني
} else if (accuracy >= 50) {
  colorTypeStatus = "Possible Yellow blue"; // احتمال وجود عمى لوني
} else {
  colorTypeStatus = " Yellow blue" ; // احتمال كبير لوجود عمى لوني
}


   

    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(25),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Color Blindness-Type: ',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(colorTypeStatus,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 10.sp,color: AppColor.titleBoardgingColor)),
                ],
              ),
              SizedBox(height: height * 0.02),
              _buildRow(
                  text: "Correct answers:",
                  value: " $correctCount",
                  textColor: Colors.green,
                  height: height),
              SizedBox(height: height * 0.02),
              _buildRow(
                  text: "False answers:",
                  value: " ${falseAnswers.length}",
                  textColor: Colors.red,
                  height: height),
              SizedBox(height: height * 0.02),
              _buildPercentageRow(accuracy / 100, height: height),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow({
    required String text,
    String? value,
    Color? textColor,
    required double height,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 10.sp, color: textColor ?? Colors.black),
        ),
        if (value != null)
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              value,
              style: TextStyle(fontSize: 9.sp, color: Colors.black,fontWeight: FontWeight.w600),
            ),
          ),
      ],
    );
  }

  Widget _buildPercentageRow(double percent, {required double height}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRow(
            text: "Percentage:",
            value: "${(percent * 100).toStringAsFixed(2)}%",
            height: height),
        SizedBox(height: height * 0.02),
        LinearPercentIndicator(
          barRadius: const Radius.circular(10),
          width: 300,
          lineHeight: 10,
          percent: percent,
          backgroundColor: Colors.grey,
          progressColor: Colors.blue,
        ),
      ],
    );
  }

  Widget _buildDetailsCard(BuildContext context, double height, double width) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(25),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              images.length,
              (index) => _buildDetailRow(
                context: context,
                imagePath: images[index],
                correctAnswer: correctAnswers[index],
                userAnswer: userAnswers[index],
                isCorrect: correctAnswers[index] == userAnswers[index],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow({
    required BuildContext context,
    required String imagePath,
    required String correctAnswer,
    required String userAnswer,
    required bool isCorrect,
  }) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRow(
              text: "Correct answer: ",
              value: correctAnswer,
              height: 0,
            ),
            _buildRow(
                text: "Your answer:      ",
                value: userAnswer,
                height: 0,
                textColor: isCorrect ? Colors.green : Colors.red),
          ],
        ),
      ],
    );
  }
}
