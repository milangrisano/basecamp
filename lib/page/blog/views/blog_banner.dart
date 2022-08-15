import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class BlogBanner extends StatelessWidget {
  const BlogBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/banner/blog.png'),
          fit: BoxFit.cover
        )
      ),
      height: 600,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LettersOutline(text: 'BASECAMPS', fontSize: 45),
          LettersBold(text: 'blog'.toUpperCase(), fontSize: 90),
          Container(
            margin: EdgeInsets.only(left: size.width * 1/3),
            color: Colors.white,
            height: 3,
            width: size.width * 2/3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 290, vertical: 40),
            child: LettersCenter(
              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              fontSize: 14,
            ),
          ),

        ],
      ),
    );
  }
}