import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            right: 50,
            child: Container(
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
          ),
          Container(
            height: 400,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black,
                  height: 140,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      LettersOutline(
                        text: 'About',
                        fontSize: 140,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      const Positioned(
                        bottom: 10,
                        child: LettersBold(
                          text: 'BASECAMP',
                          fontSize: 30
                        )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 900,
                  child: const LettersCenter(
                    text: 'We are a full service audiovisual production company with 20 years of experience and constant evolution. We have one of the most robust technological platforms in the world to execute the audiovisual piece taking into account the objectives, making sure that it communicates what it wants to transmit, betting on providing results to the brands.',
                    fontSize: 18,
                  ),
                ),
                Container(
                  // color: Colors.pink,
                  width: 150,
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
                              child: const Letters(text: 'Learn more'),
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
            ),
          ),          
        ],
      ),
    );
  }
}