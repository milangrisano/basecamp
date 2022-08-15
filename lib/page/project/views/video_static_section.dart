import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  final int itemCount;
  const GridViewBuilder({
    Key? key, required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.black,
      child: GridView.builder(
        itemCount: itemCount,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.77,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              YouTubeCards(
                youtubeURL: allVideo[index].youtubeURL,
                width: 442,
                height: 250,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  children: [
                    LettersBold(
                      text: 'commercial - '.toUpperCase(),
                      fontSize: 22,
                    ),
                    LettersBold(
                      text: allVideo[index].text,
                      color: const Color(0xffCDFF00),
                      fontSize: 22,
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}

