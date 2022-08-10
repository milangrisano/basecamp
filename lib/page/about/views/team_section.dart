import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({Key? key}) : super(key: key);

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