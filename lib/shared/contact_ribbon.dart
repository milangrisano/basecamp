import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ContactRibbon extends StatelessWidget {
  const ContactRibbon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Logo(width: 200, height: 200),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LettersBold(text: 'ACCESS'),
                  SizedBox(height: 20),
                  Letters(text: 'Home', color: Colors.grey),
                  Letters(text: 'About', color: Colors.grey),
                  Letters(text: 'Projects', color: Colors.grey),
                  Letters(text: 'Blog', color: Colors.grey),
                  Letters(text: 'Contact', color: Colors.grey),
                ],
              ),
              Container(
                width: 200,
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LettersBold(text: 'CONTACT'),
                    SizedBox(height: 20),
                    Letters(text: '- 809-566-1343', color: Colors.grey),
                    Letters(text: '- Calle los Conquistadores #16, Arroyo Hondo', color: Colors.grey),
                    Letters(text: '- info@basecampstudio.net', color: Colors.grey),

                  ],
                ),
              )
            ],
          ),
        ),
        const StrategyGroups()
      ],
    );
  }
}

class StrategyGroups extends StatelessWidget {
  const StrategyGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      alignment: Alignment.centerLeft,
      color: Colors.black,
      height: 30,
      width: double.infinity,
      child: const LettersBold(text: 'Created by M STRATEGY GROUP'),
    );
  }
}