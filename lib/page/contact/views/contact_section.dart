import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            child: Container(                        
              height: 450,
              width: 450,
              margin: EdgeInsets.only(
                left: size.width * 2/5,
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
                alignment: Alignment.centerRight,
                color: Colors.black,
                height: 120,
                width: size.width * 2/3,
                child:  const LettersOutline(
                  text: 'CONTACT US',
                  fontSize: 80,
                  color: Color.fromARGB(255, 209, 209, 209)
                )
              ),
              Container(
                color: Colors.white,
                width: size.width * 2/3,
                height: 3,
              ),
              Container(
                color: Colors.black,
                height: 30,
                width: size.width * 2/3,
              )
            ],
          ),
        ],
      ),
    );
  }
}