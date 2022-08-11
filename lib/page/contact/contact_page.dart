import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner/contactus.png'),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: const [
                ContactUsSection(),
                LetsFilm(),
                LocateUs(),
              ],
            ),
          ),
          const NewsLettersSection(),
          const ContactRibbon()
        ],
      ),
    );
  }
}



