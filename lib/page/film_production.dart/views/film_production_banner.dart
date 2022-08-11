import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  final List<Banner> categoryBanner;
  const BannerList({
    Key? key,
    required this.categoryBanner
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categoryBanner.map((e)=> FilmProductionBanner(component: e,)).toList(),
    );
  }
}

class FilmProductionBanner extends StatelessWidget {
  final Banner component;
  const FilmProductionBanner({
    Key? key,
    required this.component,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(component.image),
          fit: BoxFit.cover
        )
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.transparent,
            child: Container(                        
              height: size.height,
              width: 450,
              margin: const EdgeInsets.only(
                left: 500,
                top: 150
              ),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                )
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal:500),
                // width: double.infinity,
                color: Colors.transparent,
                child: LettersOutline(
                  text: component.bold,
                  fontSize: 45,
                  color: Color.fromARGB(255, 209, 209, 209)
                ),
              ),                  
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: size.width * 1/3,
                    height: 3,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: LettersBold(
                      text: component.solid,
                      fontSize: 90
                    )
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Banner {
  final String bold;
  final String solid;
  final String image;
  final int servicesbanner;

  Banner(
    this.bold,
    this.solid,
    this.image,
    this.servicesbanner
  );
}
List<Banner> banner = [
  Banner(
    'FILM',
    'PRODUCTION',
    'assets/banner/filmproduction.png',
    1
  ),
  Banner(
    'LIVE',
    'PRODUCTION',
    'assets/banner/liveproduction.png',
    2
  ),
  Banner(
    'SOUND',
    'STUDIO',
    'assets/banner/soundstudio.png',
    3
  ),
];