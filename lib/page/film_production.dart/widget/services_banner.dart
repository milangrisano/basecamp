import 'package:basecamp/class/banner_services.dart';
import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class ServicesBanner extends StatelessWidget {
  final int index;
  const ServicesBanner({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(banner[index].image),
          fit: BoxFit.cover
        )
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.transparent,
            child: Container(                        
              height: size.height,
              width: 450,
              margin: const EdgeInsets.only(
                left: 500,
                top: 150
              ),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                )
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal:500),
                // width: double.infinity,
                color: Colors.transparent,
                child: LettersOutline(
                  text: banner[index].bold,
                  fontSize: 45,
                  color: const Color.fromARGB(255, 209, 209, 209)
                ),
              ),                  
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: size.width * 1/3,
                    height: 3,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: LettersBold(
                      text: banner[index].solid,
                      fontSize: 90
                    )
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

