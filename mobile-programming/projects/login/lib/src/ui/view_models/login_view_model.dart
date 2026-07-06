import 'package:flutter/material.dart';
import 'package:login/src/ui/views/home/home_page.dart';

class LoginViewModel {
  final emailInputController = TextEditingController();
  final passwordInputController = TextEditingController();
  final errorMessageController = TextEditingController();
  static const _validEmail = "usuario@gmail.com";
  static const _validPassword = "abc123";

  void onChangedValue(String value) {
    errorMessageController.text = "";
  }

  void login(BuildContext context) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    String email = emailInputController.text;
    String password = passwordInputController.text;

    if (email.trim().isEmpty || password.trim().isEmpty) {
      errorMessageController.text = "Por favor, preencha todos os campos.";

      return;
    }

    if (!emailRegex.hasMatch(email)) {
      errorMessageController.text = "Por favor, insira um email válido.";

      return;
    }

    if (email != _validEmail || password != _validPassword) {
      errorMessageController.text = "Email ou senha incorretos.";

      return;
    }

    errorMessageController.text = "";

    Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => const HomePage()),
    );
  }
}
