import 'package:flutter/material.dart';
import 'package:navigation/src/ui/views/screens/first_screen.dart';
import 'package:navigation/src/ui/views/screens/second_screen.dart';
import 'package:navigation/src/ui/views/screens/third_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String firstMessage = 'Message via RouteSettings';
  static const String secondMessage = 'Message via constructor parameter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  settings: const RouteSettings(arguments: firstMessage),
                  builder: (_) => const FirstScreen(),
                ),
              ),
              child: Text("First Screen"),
            ),
            SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SecondScreen(message: secondMessage),
                ),
              ),
              child: Text("Second Screen"),
            ),
            SizedBox(height: 16),
            FilledButton(
              onPressed: () async {
                final result = await Navigator.push<String>(
                  context,
                  MaterialPageRoute(builder: (_) => const ThirdScreen()),
                );
                if (result != null && context.mounted) {
                  showDialog<void>(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text(result),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text("Third Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
