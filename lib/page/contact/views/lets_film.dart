import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class LetsFilm extends StatelessWidget {
  const LetsFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        children: [
          LettersBold(text: 'Let\'s'.toUpperCase(), fontSize: 30),
          const LettersBold(
            text: ' FILM',
            fontSize: 30,
            color: Color(0xffCDFF00),
          )
        ],
      ),
    );
  }
}