import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ItemListLive extends StatelessWidget {
  final List<Services> categoryProduct;
  const ItemListLive({
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
    'assets/services/events.png',
    'events'.toUpperCase(),
    'What is it?',
    'Experiential events provide consumers with real-world opportunities to engage with a brand or product directly. The idea is to create a tangible experience that will create a more valuable and memorable impact on your consumer. The hope is that the provided experience will lead them to not only want to share their experience with all of their friends online and in real life but also become more likely to purchase your product and ultimately become a brand loyalist.',
    'Who is it for?',
    'Experiential events are significant for both B2B and B2C companies alike. If you\'re looking to create something special for your customers that will be talked and thought about, then creating unique and engaging experiences that make an impression is absolutely an approach you may want to take.',
    'When to use IT?',
    'With 70% of users becoming regular customers after an experiential marketing event (According to EMI), you should use these events to engage your customer base further or expand it to new demographics. They work well in tandem with new product releases or significant cultural happening that correlate with your brand\'s vision.',
    1
  ),
  Services(
    'assets/services/socialmedia.png',
    'social media'.toUpperCase(),
    'What is it?',
    'Social video is any video created for or used on social media including both organic and paid social. It lives and breathes on the platforms where your consumers live. Instagram, Facebook, Twitter, and any other social media platform where your customers work and play. Depending upon the platform the videos can come in a variety of forms, from 7-second dynamic cinemagraphs to longer-form branded content. Video on social is a surefire way to get your customers to engage with your message, products, and initiatives.',
    'Who is it for?',
    'Social video is great for any brand that wants to speak to the largest potential audience possible. Your social feed is a representation of your brand, your ideals, and your personality. Using video, which is one of the best proponents of social engagement, to keep your customers aware of your brand and your movement allows you to stay at the top of their minds and buying potential.',
    'When to use IT?',
    'Video on social is a surefire way to get your customers to engage with your message, products, and initiatives. There is never a wrong time to engage with customers on the platform(s) where they are spending the most time. Media buying and spending has been trending more and more towards social over the past few years and will only continue to grow.',
    2
  ),
];
