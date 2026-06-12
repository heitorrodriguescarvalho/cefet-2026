import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final double width;
  final void Function()? onPressed;

  const Button({
    super.key,
    required this.text,
    this.backgroundColor,
    this.width = 80,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? Color.fromARGB(255, 54, 54, 54),
        fixedSize: Size(width, 80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
      ),
    );
  }
}
