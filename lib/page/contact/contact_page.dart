import 'package:basecamp/page/contact/views/lets_film.dart';
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
          const ContactUsSection(),
          const LetsFilm(),
          // const LocateUs(),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200,
          ),
        ],
      ),
    );
  }
}



