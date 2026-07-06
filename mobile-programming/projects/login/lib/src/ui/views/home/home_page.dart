import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

              TextField(decoration: const InputDecoration(labelText: 'Email')),

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
              ),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
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
