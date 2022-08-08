import 'package:basecamp/class/video_landingpage.dart';
import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';

class CarrouselVideoCards extends StatefulWidget {
  const CarrouselVideoCards({
    Key? key,
  }) : super(key: key);

  @override
  State<CarrouselVideoCards> createState() => _CarrouselVideoCardsState();
}

class _CarrouselVideoCardsState extends State<CarrouselVideoCards> {
  int activeIndex = 0;
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButtons(),
        const SizedBox(height: 15),
        CarouselSlider.builder(
          carouselController: controller,
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            height: 250,
            viewportFraction:0.28,
            enableInfiniteScroll: true,
            initialPage: 1,
            onPageChanged: (index, reason) => 
            setState(() => activeIndex = index),
          ),
          itemCount: videolandingPage.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.black,
              width: 444,
              child: YouTubeCards(youtubeURL: videolandingPage[index].youtubeURL),
            );
          },
        ),
      ],
    );
  }  
  buildButtons({bool stretch = false}) => Row(
    children:[
      const Spacer(),
      Container(
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffCDFF00),
            width: 1.0,
          )
        ),
        child: IconButton(
          // alignment: Alignment.center,
          onPressed: previous,
          icon: const Icon(Icons.arrow_back, size: 24),
          color: const Color(0xffCDFF00),
        ),
      ),
      stretch ? const Spacer() : const SizedBox(width: 32),
            Container(
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffCDFF00),
            width: 1.0,
          )
        ),
        child: IconButton(
          // alignment: Alignment.center,
          onPressed: previous,
          icon: const Icon(Icons.arrow_forward, size: 24),
          color: const Color(0xffCDFF00),
        ),
      ),
      stretch ? const Spacer() : const SizedBox(width: 32),

    ]
  );
  void next () => controller.nextPage(duration: const Duration(milliseconds: 500));
  void previous () => controller.previousPage(duration: const Duration(milliseconds: 500));
}


