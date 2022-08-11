import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ItemListSoundStudio extends StatelessWidget {
  final List<Services> categoryProduct;
  const ItemListSoundStudio({
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
List<Services> sound = [
  Services(
    'assets/services/filmstudio1.png',
    'film studio'.toUpperCase(),
    'What is it?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'Who is it for?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'When to use IT?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    1
  ),
  Services(
    'assets/services/equipment.png',
    'equipment'.toUpperCase(),
    'What is it?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'Who is it for?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    'When to use IT?',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    2
  ),
];
