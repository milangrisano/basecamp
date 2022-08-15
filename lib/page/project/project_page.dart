import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        ProjectBanner(),
        CustomTabBarProject(),
        NewsLettersSection(),
        ContactRibbon(),
      ],
    );
  }
}


