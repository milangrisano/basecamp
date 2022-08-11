import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final List<Services> categoryProduct;
  const ItemList({
    Key? key,
    required this.categoryProduct
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categoryProduct.map((e)=> ItemCard(product: e,)).toList(),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Services product;
  const ItemCard({
    Key? key,
    required this.product
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      height: 575,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage(product.image),
                      fit: BoxFit.cover
                    )
                  ),
                  child: LettersBoldCenter(
                    text: product.name,
                    fontSize: 30
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: LettersBold(
                          text: 'What is it?'.toUpperCase(),
                        )
                      ),
                      const Expanded(
                        flex: 5,
                        child: LettersJustify(
                          text: 'Your brand is who you are - Brand Video Production is your elevator pitch. It\'s your brand\'s heartbeat distilled in a short, yet powerful message that grabs attention and invokes action. The video\'s message and style will vary. A brand video can be a corporate video, a docu-style video, or many other forms. However, its purpose is always the same; translate your values and your value to your audience and entertain them. We live in a world where if you want to be remembered, you must be unique and memorable.',
                          fontSize: 14,
                        )
                      )

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: LettersBold(
                          text: 'Who is it for?'.toUpperCase(),
                        )
                      ),
                      const Expanded(
                        flex: 5,
                        child: LettersJustify(
                          text: 'Whether you need to build trust, recruit, or sell, brand video production is an essential tool in your arsenal. These videos are for you to put your real personality and vision at the forefront of everything else. In today\'s world, people are more aware and critical of brands and their messages than ever before. If you aren\'t ahead of how your brand is portraying itself, then someone else is going to write the narrative for you.',
                          fontSize: 14,
                        )
                      )

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: LettersBold(
                          text: 'When to use IT?'.toUpperCase(),
                        )
                      ),
                      const Expanded(
                        flex: 5,
                        child: LettersJustify(
                          text: 'You have something to say. You might need to create awareness or launch a new initiative. Maybe your brand is pivoting or just in need of some TLC. If any of these are the case, then you should partner with us for kick-ass brand video production that the world will love.',
                          fontSize: 14,
                        )
                      )

                    ],
                  ),
                ),
 
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Services {
  final String name;
  final String description;
  final String image;
  final int category;

  Services(
    this.name,
    this.description,
    this.image,
    this.category
  );
}
List<Services> services = [
  Services(
    'Brand Video'.toUpperCase(),
    'assets/services/brandvideo.png',
    'assets/services/brandvideo.png',
    1
  ),
  Services(
    'Events'.toUpperCase(),
    '',
    'assets/services/events.png',
    2
  ),
  Services(
    'FILM Studio'.toUpperCase(),
    '',
    'assets/services/filmstudio.png',
    3
  ),
];
