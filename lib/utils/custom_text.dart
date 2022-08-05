import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class LettersOutline extends StatelessWidget {
  const LettersOutline({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.russoOne(
        
        fontSize: fontSize,
        foreground: Paint()
        ..style = PaintingStyle.stroke
        ..color =Colors.white
        ..strokeWidth = 1
      ),
    );
  }
}

class Letters extends StatelessWidget {
  const Letters({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersBold extends StatelessWidget {
  const LettersBold({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class LettersBoldCenter extends StatelessWidget {
  const LettersBoldCenter({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LettersCenter extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const LettersCenter({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersJustify extends StatelessWidget {
  const LettersJustify({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class LettersUnderline extends StatelessWidget {
  const LettersUnderline({
    Key? key,
    required this.text,
    this.fontSize  = 12,
    this.color  = Colors.white,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
        decoration: TextDecoration.underline
      ),
    );
  }
}