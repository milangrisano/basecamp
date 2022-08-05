import 'package:basecamp/export.dart';
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
          BannerView(),
          AboutView(),
          Container(
            color: Colors.green,
            height: 500,
            width: double.infinity,
          ),
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