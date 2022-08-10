import 'package:basecamp/export.dart';
import 'package:basecamp/page/landingpage/widget/text_form.dart';
import 'package:flutter/material.dart';

class NewsLettersSection extends StatelessWidget {
  const NewsLettersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/banner/newsletters.png'),
          fit: BoxFit.cover,
          opacity: 0.8
        )
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 100),
            width: size.width * 2/3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LettersBold(
                  text: 'Subscribe To Our Newsletter'.toUpperCase(),
                  fontSize: 30,
                  color: Colors.black,
                ),
                const Letters(
                  text: 'Subscribe to our newsletter and you will have first-hand information about our new projects.',
                  fontSize: 18,
                  color: Colors.black
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextFieldContact(
                      hint: 'Enter your name',
                      name: 'Name', fontsize: 14,
                      height: 60,
                      width: 350,
                    ),
                    TextFieldContact(
                      name: 'Enter your last name',
                      hint: 'Lastname', fontsize: 14,
                      height: 60,
                      width: 350,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: size.width * 1/3,
            height: size.height,
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.arrow_forward, color: Colors.black),
              label: const LettersBold(
                text: 'Send',
                color: Colors.black
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffCDFF00),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              ),
            ),
          ),
        ],
      ),
    );
  }
}