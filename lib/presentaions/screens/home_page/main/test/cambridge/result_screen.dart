import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class ResultScreen extends StatelessWidget {
  final List<String> correctAnswers;
  final List<String> falseAnswers;
  final List<String> userAnswers;
  final List<String> images;

  const ResultScreen({
    Key? key,
    required this.correctAnswers,
    required this.falseAnswers,
    required this.userAnswers,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Padding(
        padding: EdgeInsets.all(19.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildResultCard(context, height, width),
            SizedBox(height: height * 0.05),
            _buildDetailsCard(context, height, width),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(BuildContext context, double height, double width) {
    int correctCount = 0;
    for (int i = 0; i < correctAnswers.length; i++) {
      if (correctAnswers[i] == userAnswers[i]) {
        correctCount++;
      }
    }
    double accuracy = (correctCount / correctAnswers.length) * 100;

    String colorTypeStatus;
    if (accuracy == 100) {
      colorTypeStatus = "No color blindness";
    } else if (accuracy >= 50) {
      colorTypeStatus = "Possible Red-Green ";
     
    } else if (accuracy >= 50) {
      colorTypeStatus = "Red-Green";
    }else {
      colorTypeStatus = "Likely color blindness";
    }

    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(25.r),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Color Blindness-Type: ',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    colorTypeStatus,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                         
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              _buildRow(
                  text: "Correct answers:",
                  value: " ${correctAnswers.length  -falseAnswers.length}",
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
          style: TextStyle(fontSize: 15.sp, color: textColor ?? Colors.black),
        ),
        if (value != null)
          Text(
            value,
            style: TextStyle(fontSize: 15.sp, color: Colors.black),
          ),
      ],
    );
  }

  Widget _buildPercentageRow(double percent, {required double height}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRow(
            text: "Correct Percentage:",
            value: "${(percent * 100).toStringAsFixed(2)}%",
            height: height),
        SizedBox(height: height * 0.02),
        LinearPercentIndicator(
          barRadius: Radius.circular(10.r),
          width: 300.w,
          lineHeight: 10.h,
          percent: percent,
          backgroundColor: AppColor.linearProgress,
          progressColor: AppColor.ligthBlue,
        ),
      ],
    );
  }

  Widget _buildDetailsCard(BuildContext context, double height, double width) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(25.r),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
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
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: CircleAvatar(
            radius: 35.r,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRow(text: "Correct answer: ", value: correctAnswer, height: 0,   ),
            _buildRow(text: "Your answer:      ", value: userAnswer, height: 0,textColor: AppColor.dotsColors   ),
          ],
        ),
      ],
    );
  }
}
