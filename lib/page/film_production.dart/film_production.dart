import 'package:basecamp/page/film_production.dart/widget/custom_main_tab.dart';
import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class FilmProduction extends StatelessWidget {
  const FilmProduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: ListView(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 1200,
            child: const CustomMainTab(),
          ),
          const NewsLettersSection(),
          const ContactRibbon(),
        ],
      ),
    );
  }
}






