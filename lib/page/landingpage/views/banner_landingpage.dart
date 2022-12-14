import 'package:basecamp/utils/custom_text.dart';
import 'package:flutter/material.dart';

class BannerLandingPage extends StatelessWidget {
  const BannerLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      height: 600,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/banner/landingpage.png'
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 750,
            // color: Colors.yellow,
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  height: 450,
                  width: 450,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: Colors.white.withOpacity(0.6),
                    )
                   
                  )
                ),
                Container(
                  height: 300,
                  // width: 560,
                  color: Colors.transparent ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          LettersOutline(text: 'WE TELL', fontSize: 45),
                          LettersBold(text: 'STORIES TO', fontSize: 90),
                          LettersBold(text: 'REMENBER', fontSize: 90, color: Color(0xffCDFF00)),
                          Letters(text: 'stories TO REMEMBER.', fontSize: 18)
                        ],
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.pink,
            width: 200,
            height: 50,
            child: Stack(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: const Color(0xffCDFF00),
                      )
                     
                    )
                  ),
                Positioned(
                  top: 14,
                  left: 12,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: const Letters(text: 'See our projects'),
                      ),
                      Container(
                        color: Colors.white,
                        width: 40,
                        height: 2,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}