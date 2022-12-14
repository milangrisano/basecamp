import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';


class MeetTheTeamSection extends StatelessWidget {
  const MeetTheTeamSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [      
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 400,
          child: Row(
            children: [
              Container(
                color: Colors.white,
                width: size.width * 1/3,
                height: 3,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    color: Colors.black,
                    child: Container(                        
                      height: 450,
                      width: 450,
                      margin: const EdgeInsets.only(
                        left: 300,
                        top: 50
                      ),
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
                    alignment: Alignment.center,
                    color: Colors.black,
                    width: 480,
                    height: 200,
                    child:  const LettersOutline(
                      text: 'Meet',
                      fontSize: 140,
                      color: Color.fromARGB(255, 209, 209, 209)
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 85),
                    height: 150,
                    // color: Colors.yellow,
                    child: const LettersBold(
                      text: 'THE TEAM',
                      fontSize: 30
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
