//import 'package:flutter/material.dart';

import 'dart:io';

void main() {
  // runApp(const MyApp());
  //2object
  var out1 = Question(question: '4+5', answer: 9.0);
  //print(out1);
  //3list of objects
  var questions = [
    Question(question: '3*2', answer: 6),
    Question(question: '5-1', answer: 4)
  ];
  //5 call method
  var srudeanswer = getAnswer(questions[0].question);
  print(srudeanswer);
}

//4 method to get answer from user
//!to null safty in it if user input null
//double .pasrse to convert to double from input
double getAnswer(String msg) {
  print(msg);
  var answer = double.parse(stdin.readLineSync()!);
  return answer;
}

//1class
//install extention dart data class generator on vscode
class Question {
  String question;
  double answer;
  //constructor
  Question({
    required this.question,
    required this.answer,
  });
}
