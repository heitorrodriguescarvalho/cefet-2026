import 'package:flutter/material.dart';

class HomeViewModel {
  final displayController = TextEditingController(text: "0");
  String _firstOperating = "";
  String _secondOperating = "";
  String _opration = "";
  bool _typingSecondOperating = false;

  void onPressedDigit(String digit) {
    displayController.text += digit;
  }
}
