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
        children: [
          const BannerView(),
          const AboutView(),
          const ServicesSection(),
          Container(
            color: Colors.yellow,
            height: 500,
            width: double.infinity,
          ),
          
        ],
      ),
    );
  }
}