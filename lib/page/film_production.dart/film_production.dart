import 'package:basecamp/page/film_production.dart/widget/tab_bar_slider.dart';
import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class FilmProduction extends StatelessWidget {
  const FilmProduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: ListView(
        children: const [
          CustomTabBarServices(),
          NewsLettersSection(),
          ContactRibbon(),
        ],
      ),
    );
  }
}






