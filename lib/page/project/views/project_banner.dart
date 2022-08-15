import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ProjectBanner extends StatelessWidget {
  const ProjectBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/banner/filmwemade.png'),
          fit: BoxFit.cover,
        )
      ),
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: Container(                        
              height: 450,
              width: 450,
              margin: EdgeInsets.only(
                left: size.width * 1/5,
                top: 60,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                height: 60,
                width: size.width * 2/3,
                child:  const LettersOutline(
                  text: 'FILM',
                  fontSize: 45,
                  color: Color.fromARGB(255, 209, 209, 209)
                )
              ),
              Container(
                alignment: Alignment.centerRight,
                color: Colors.transparent,
                height: 100,
                width: size.width * 2/3,
                child:  const LettersBold(
                  text: 'WE\'VE MADE',
                  fontSize: 80,
                  color: Color.fromARGB(255, 209, 209, 209)
                )
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: size.width * 1/3),
                width: size.width * 2/3,
                height: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}