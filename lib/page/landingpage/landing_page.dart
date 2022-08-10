import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
        child: ListView(
          children: const [
            BannerLandingPage(),
            AboutSection(),
            ServicesSection(),
            VideoSection(),
            NewsLettersSection(),
            ContactRibbon(),
          ],
        ),
      ),
    );
  }
}