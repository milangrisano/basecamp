import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        BlogBanner(),
        GridBlogBuilder(itemCount: 9),
        NewsLettersSection(),
        ContactRibbon(),
      ],
    );
  }
}



