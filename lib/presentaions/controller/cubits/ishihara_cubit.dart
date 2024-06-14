import 'package:bloc/bloc.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/result_screen.dart';
import 'package:equatable/equatable.dart';
 import 'package:flutter/material.dart';

// State Class
class IshiraState extends Equatable {
  final int currentPage;
  final List<String> images;
  final List<String> correctAnswers;
  final List<String> userAnswers;
  final bool isTestCompleted;
  final bool hasAnswered;

  const IshiraState({
    required this.currentPage,
    required this.images,
    required this.correctAnswers,
    required this.userAnswers,
    this.isTestCompleted = false,
    this.hasAnswered = false,
  });

  IshiraState copyWith({
    int? currentPage,
    List<String>? images,
    List<String>? correctAnswers,
    List<String>? userAnswers,
    bool? isTestCompleted,
    bool? hasAnswered,
  }) {
    return IshiraState(
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
        hasAnswered,
      ];
}

// Cubit Class
class IshihraCubit extends Cubit<IshiraState> {
  IshihraCubit(List<String> images, List<String> correctAnswers)
      : super(IshiraState(
          currentPage: 0,
          images: images,
          correctAnswers: correctAnswers,
          userAnswers: List.filled(images.length, ''),
        ));

  var pageController = PageController(initialPage: 0);

  void onSelectAnswer(int index, String answer) {
    final newUserAnswers = List<String>.from(state.userAnswers);
    newUserAnswers[index] = answer;
    emit(state.copyWith(userAnswers: newUserAnswers, hasAnswered: true));
  }

  void onNext(BuildContext context) {
    if (state.hasAnswered) {
      if (state.currentPage < state.images.length - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastEaseInToSlowEaseOut,
        );
        emit(state.copyWith(
          currentPage: state.currentPage + 1,
          hasAnswered: false,
        ));
      } else {
        final falseAnswers = <String>[];
        for (int i = 0; i < state.correctAnswers.length; i++) {
          if (state.correctAnswers[i] != state.userAnswers[i]) {
            falseAnswers.add(state.userAnswers[i]);
          }
        }
        emit(state.copyWith(isTestCompleted: true));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctAnswers: state.correctAnswers,
              userAnswers: state.userAnswers,
              images: state.images,
              falseAnswers: falseAnswers,
            ),
          ),
        );
      }
    } else {
      // Show a message to the user to select an answer
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an answer')),
      );
    }
  }

  void onBack() {
    if (state.currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(state.copyWith(
        currentPage: state.currentPage - 1,
        hasAnswered: state.userAnswers[state.currentPage - 1].isNotEmpty,
      ));
    }
  }
}
