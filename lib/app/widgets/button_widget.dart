import 'package:flutter/material.dart';

class RaisedButtonCustomWidget extends StatelessWidget {
  const RaisedButtonCustomWidget({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
}
