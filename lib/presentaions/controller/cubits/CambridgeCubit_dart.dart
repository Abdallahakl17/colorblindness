import 'package:bloc/bloc.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/result.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/result_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:color_blindness/core/utils/app_images.dart';
import 'package:flutter/material.dart';

// State Class
class CambridgeState extends Equatable {
  final int currentPage;
  final List<String> images;
  final List<String> correctAnswers;
  final List<String> userAnswers;
  final bool isTestCompleted;
  final bool hasAnswered;

  const CambridgeState({
    required this.currentPage,
    required this.images,
    required this.correctAnswers,
    required this.userAnswers,
    this.isTestCompleted = false,
    this.hasAnswered = false,
  });

  CambridgeState copyWith({
    int? currentPage,
    List<String>? images,
    List<String>? correctAnswers,
    List<String>? userAnswers,
    bool? isTestCompleted,
    bool? hasAnswered,
  }) {
    return CambridgeState(
      currentPage: currentPage ?? this.currentPage,
      images: images ?? this.images,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      userAnswers: userAnswers ?? this.userAnswers,
      isTestCompleted: isTestCompleted ?? this.isTestCompleted,
      hasAnswered: hasAnswered ?? this.hasAnswered,
    );
  }

  @override
  List<Object> get props => [
        currentPage,
        images,
        correctAnswers,
        userAnswers,
        isTestCompleted,
        hasAnswered
      ];
}

// Cubit Class
class CambridgeCubit extends Cubit<CambridgeState> {
  CambridgeCubit()
      : super(const CambridgeState(
          currentPage: 0,
          images: [
            AppImages.imageCTest,
            AppImages.imageCTest2,
            AppImages.imageCTest3,
            AppImages.imageCTest4,
          ],
          correctAnswers: ['right', 'left', 'bottom', 'top'],
          userAnswers: ['', '', '', ''],
        ));

  void onSelectAnswer(int index, String answer) {
    final newUserAnswers = List<String>.from(state.userAnswers);
    newUserAnswers[index] = answer;
    emit(state.copyWith(userAnswers: newUserAnswers, hasAnswered: true));
  }

  void onNext(BuildContext context) {
    if (state.hasAnswered) {
      if (state.currentPage < state.images.length - 1) {
        emit(state.copyWith(
            currentPage: state.currentPage + 1, hasAnswered: false));
      } else {
        emit(state.copyWith(isTestCompleted: true));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctAnswers: state.correctAnswers,
              userAnswers: state.userAnswers,
              images: state.images,
            ),
          ),
        );
      }
    } else {
      // Show a message to the user to select an answer
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an answer ')),
      );
    }
  }
  
  
  void onBack() {
    if (state.currentPage > 0) {
      emit(state.copyWith(
          currentPage: state.currentPage - 1, hasAnswered: true));
    }
  }
}
