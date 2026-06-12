import 'package:calculator/src/ui/views/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.indigo)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
