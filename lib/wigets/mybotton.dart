import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Function() onLongPressed;

  const MyButton({Key? key, required this.text, required this.onPressed, required this.onLongPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onLongPressed,
      onLongPress: onLongPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}
