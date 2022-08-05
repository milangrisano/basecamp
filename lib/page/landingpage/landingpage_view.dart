import 'package:basecamp/export.dart';
import 'package:basecamp/page/landingpage/views/services_section.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        // physics: const NeverScrollableScrollPhysics(),
        children: const [
          BannerView(),
          AboutView(),
          ServicesSection(),
          VideoSection(),          
        ],
      ),
    );
  }
}

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 600,
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 140,
            width: 430,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const LettersOutline(
                  text: 'Work',
                  fontSize: 140,
                ),
                Positioned(
                  bottom: 10,
                  child: LettersBold(
                    text: 'Things we’ve PRODUCED'.toUpperCase(),
                    fontSize: 30
                  )
                ),
              ],
            ),
          ),
          
        ],
      )
    );
  }
}