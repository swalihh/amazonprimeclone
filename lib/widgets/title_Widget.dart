import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String firstText;
  final String secondText;

  RichTextWidget({required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }
}
