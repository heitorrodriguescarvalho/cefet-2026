import 'package:flutter/material.dart';
import 'package:login/src/ui/view_models/login_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 80),
                child: Image.asset('assets/images/logo.png', width: 280),
              ),

              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: _viewModel.onChangedValue,
                controller: _viewModel.emailInputController,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Esqueci a senha'),
                ),
              ),

              TextField(
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Senha'),
                onChanged: _viewModel.onChangedValue,
                controller: _viewModel.passwordInputController,
              ),

              TextField(
                controller: _viewModel.errorMessageController,
                readOnly: true,
                style: const TextStyle(color: Colors.red),
                decoration: const InputDecoration(border: InputBorder.none),
              ),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => _viewModel.login(context),
                  style: FilledButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 231, 56, 57),
                  ),
                  child: const Text('Entrar'),
                ),
              ),

              TextButton(onPressed: () {}, child: const Text("Crie uma conta")),
            ],
          ),
        ),
      ),
    );
  }
}
