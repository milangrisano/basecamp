import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class AvatarTeam extends StatelessWidget {
  final String img;
  final String name;
  final String position;
  const AvatarTeam({
    Key? key,
    required this.img,
    required this.name,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover
            )
          ), 
        ),
        const SizedBox(height: 10),
        LettersBoldCenter(text: name),
        LettersBoldCenter(
          text: position,
          color: const Color(0xffCDFF00) 
        ),
      ],
    );
  }
}