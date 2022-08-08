import 'package:basecamp/page/landingpage/views/newsletters_section.dart';
import 'package:basecamp/shared/contact_ribbon.dart';
import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: const [
          BannerView(),
          AboutView(),
          ServicesSection(),
          VideoSection(),
          NewsLettersSection(),
          ContactRibbon(),
        ],
      ),
    );
  }
}