import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ItemListFilm extends StatelessWidget {
  final List<Services> categoryProduct;
  const ItemListFilm({
    Key? key,
    required this.categoryProduct
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categoryProduct.map((e)=> ItemCard(product: e)).toList(),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Services product;
  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DetailProducts(product: product);
  }
}

class DetailProducts extends StatelessWidget {
  const DetailProducts({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Services product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.fitWidth
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
                        text: product.title1.toUpperCase(),
                      )
                    ),
                    Expanded(
                      flex: 5,
                      child: LettersJustify(
                        text: product.text1,
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
                        text: product.title2.toUpperCase(),
                      )
                    ),
                    Expanded(
                      flex: 5,
                      child: LettersJustify(
                        text: product.text2,
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
                        text: product.title3.toUpperCase(),
                      )
                    ),
                    Expanded(
                      flex: 5,
                      child: LettersJustify(
                        text: product.text3,
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
    );
  }
}

class Services {
  final String image;
  final String name;
  final String title1;
  final String text1;
  final String title2;
  final String text2;
  final String title3;
  final String text3;
  final int category;

  Services(
    this.image,
    this.name,
    this.title1,
    this.text1,
    this.title2,
    this.text2,
    this.title3,
    this.text3,
    this.category,
  );
}
List<Services> services = [
  Services(
    'assets/services/brandvideo.png',
    'Brand Video'.toUpperCase(),
    'What is it?',
    'Your brand is who you are - Brand Video Production is your elevator pitch. It\'s your brand\'s heartbeat distilled in a short, yet powerful message that grabs attention and invokes action. The video\'s message and style will vary. A brand video can be a corporate video, a docu-style video, or many other forms. However, its purpose is always the same; translate your values and your value to your audience and entertain them. We live in a world where if you want to be remembered, you must be unique and memorable.',
    'Who is it for?',
    'Whether you need to build trust, recruit, or sell, brand video production is an essential tool in your arsenal. These videos are for you to put your real personality and vision at the forefront of everything else. In today\'s world, people are more aware and critical of brands and their messages than ever before. If you aren\'t ahead of how your brand is portraying itself, then someone else is going to write the narrative for you.',
    'When to use IT?',
    'You have something to say. You might need to create awareness or launch a new initiative. Maybe your brand is pivoting or just in need of some TLC. If any of these are the case, then you should partner with us for kick-ass brand video production that the world will love.',
    1
  ),
  Services(
    'assets/services/documentaryfilm.png',
    'Documentary/ Film'.toUpperCase(),
    'What is it?',
    'Documentaries are some of the most impactful and emotionally persuasive pieces of media. They are nonfictional motion pictures intended to document reality, so that a viewer can be better informed, educated, or enlightened about a subject they had little to no prior knowledge about. They are genuine accounts of a specific stories that are unscripted and are becoming one of the most largely consumed film mediums in recent times.',
    'Who is it for?',
    'Documentaries are for stories that need to be told. They are opportunities to tell rich and sincere stories that an audience can engage with on a profound level. You are informing, entertaining, impressing, and fostering an authentic relationship with your customers. ',
    'When to use IT?',
    'Documentary Production allows you to bring your stories, your ideas, and your innovations to meet the viewer on their level. They are perfect for branded content, where your goal is really to engage and build trust with the customer. If you tell real, authentic stories, with no strings attached you will build something for the long term. If you want a level of prestige and trust, documentaries are the perfect solution.',
    2
  ),
  Services(
    'assets/services/corporatevideo.png',
    'CORPORATE VIDEO'.toUpperCase(),
    'What is it?',
    'Simply put, corporate video production is a brand or organization communicating internally or to their core sales targets. It can be an internal business communication via video, training videos, a brand awareness film, an update about a recent award a company or team member may have won, or it could even be a vlog or videos directed to your customers. ',
    'Who is it for?',
    'If you\'re a corporate business that\'s looking to engage & inspire your employees and customers, then this is for you. There is no better way to motivate employees, inform stakeholders, and enlighten your customers. There are a million different messages that you need to distill in a million different ways. Some are most effective in a memo, but others really need a video.',
    'When to use IT?',
    'All the time. You need to get the same message out to a significant number of people, and it needs to be consistent. Your time is valuable, as valuable as informing and engaging your workforce and your advocates. Corporate video allows you to do that without wasting your time.',
    3
  ),
  Services(
    'assets/services/animationmotion.png',
    'Animation/ Motion Graphics'.toUpperCase(),
    'What is it?',
    'Animation Production & Motion Graphics refer to the designed and illustrative aspects of videos that are created and not physically filmed. Mostly, they are graphic design elements and illustrations, put in motion to tell a rich story and deliver complex information simply. From animated explainers to slick cartoon style videos, motion graphics and animation videos are a great way to speak to your audience. They are also often incorporated in live-action videos.',
    'Who is it for?',
    'Selling products, ideas, and almost anything. Animated graphic design and motion graphics creates unique and beautiful visuals that walk the viewer through abstract ideas, sophisticated products, complex processes, or spice up educational information. There are countless effective ways graphics and animation can be utilized.',
    'When to use IT?',
    'Animation and motion design production are perfect for visualizing information that is difficult to grasp, can be understood without sound, and can turn a simple idea into a beautiful video. Use them often, even if it’s just because you think they are cool. We think they are cool too!',
    4
  ),
];
