import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        AboutBanner(),
        WeDoItSection()
      ],
    );
  }
}

class WeDoItSection extends StatelessWidget {
  const WeDoItSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 600,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left:50),
            padding: const EdgeInsets.only(left:50),
            width: 500,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner/wedoit.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            width: 550,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LettersBold(text: 'How we do it?', fontSize: 30),
                const SizedBox(height: 30),
                const LettersJustify(
                  text: 'We enrich the proposal based on creativity, audiovisual resources, cinematographic trends and on social networks.\n\nOur robust technological and personal platform allows us to move in steps much faster than a conventional production company, without sacrificing quality or compromising results.',
                  fontSize: 18,
                ),
                const SizedBox(height: 30),
                Container(
                  // color: Colors.pink,
                  width: 200,
                  height: 50,
                  child: Stack(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: const Color(0xffCDFF00),
                            )
                           
                          )
                        ),
                      Positioned(
                        top: 14,
                        left: 12,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                              ),
                              child: const Letters(text: 'See our projects'),
                            ),
                            Container(
                              color: Colors.white,
                              width: 40,
                              height: 2,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
