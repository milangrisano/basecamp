import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: ListView(
        children: const[
          AboutBanner(),
          WeDoItSection(),
          MeetTheTeamSection(),
          TeamSection(),
          NewsLettersSection(),
          ContactRibbon(),
        ],
      ),
    );
  }
}