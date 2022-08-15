import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  final Color color;
  final String title;
  const CustomPage({
    Key? key,
    required this.color,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      width: double.infinity,
      height: double.infinity,
      child: LettersBold(text: title, fontSize: 50),    
    );
  }
}