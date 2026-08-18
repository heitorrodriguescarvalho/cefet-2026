import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  static const String backMessage = 'Message sent back on pop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
        child: FilledButton(
          onPressed: () => Navigator.pop(context, backMessage),
          child: Text("Back"),
        ),
      ),
    );
  }
}