import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.black,
      child: GridView.builder(
        itemCount: 6,
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

class AllVideo {
  final String youtubeURL;
  final String text;
  final String text1;
  AllVideo(
    this.youtubeURL,
    this.text,
    this.text1, 
  );
}
List<AllVideo> allVideo = [
  AllVideo(
    '9V06neAUMZA',
    'fila'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.'
  ),
  AllVideo(
    'RhEWp1l48RM',
    'presidente'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. '
  ),
  AllVideo(
    'uvt2kf4fLvM',
    'barceló imperial'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. '
  ),
  AllVideo(
    'BrGzfMi3GnE',
    'presidente'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. '
  ),
  AllVideo(
    'y_cpXG3cTbU',
    'presidente'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. '
  ),
  AllVideo(
    'MiBrf7oJ2Io',
    'altice 5g'.toUpperCase(),
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. '
  ),
];