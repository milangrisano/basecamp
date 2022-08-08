import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 600,
      child: Column(
        children: [
          Container(
            // color: Colors.green,
            height: 140,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                LettersOutline(
                  text: 'Work',
                  fontSize: 140,
                  color: Colors.white.withOpacity(0.6),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 1/3,
                        height: 3,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      LettersBold(
                        text: 'Things we’ve PRODUCED'.toUpperCase(),
                        fontSize: 30
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const CarrouselVideoCards()
        ],
      )
    );
  }
}