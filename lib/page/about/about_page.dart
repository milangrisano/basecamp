import 'package:basecamp/export.dart';
import 'package:basecamp/shared/newsletters_section.dart';
import 'package:basecamp/shared/contact_ribbon.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        AboutBanner(),
        WeDoItSection(),
        MeetTheTeamSection(),
        Team(),
        NewsLettersSection(),
        ContactRibbon(),
      ],
    );
  }
}


class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              AvatarTeam(
                img: 'assets/team/team1.png',
                name: 'NICOLAS LA MADRID'.toUpperCase(),
                position: 'CEO',
              ),
              AvatarTeam(
                img: 'assets/team/team2.png',
                name: 'Arnaud Rebufell'.toUpperCase(),
                position: 'CEO',
              ),
              AvatarTeam(
                img: 'assets/team/team3.png',
                name: 'Jorge Lamadrid'.toUpperCase(),
                position: 'gerente'.toUpperCase(),

              ),
              AvatarTeam(
                img: 'assets/team/team0.png',
                name: 'Yenroy Scarfullery'.toUpperCase(),
                position: 'GERENTE POST PRODUCCIón'.toUpperCase(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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