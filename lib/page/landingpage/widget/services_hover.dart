import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';


class ServicesHover extends StatefulWidget {
  final String number;
  final String title;
  final String item;
  final Function onTap;
  const ServicesHover({
    Key? key,
    required this.number,
    required this.title,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ServicesHover> createState() => _ServicesHoverState();
}

class _ServicesHoverState extends State<ServicesHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration( milliseconds: 250 ),
      width: size.width * 1/3,
      height: size.height,
      color: isHovered
        ? Colors.black38
        : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => widget.onTap(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 10
            ),
            child: MouseRegion(
              onEnter: ( _ ) => setState( () => isHovered = true ),
              onExit: ( _ ) => setState( () => isHovered = false ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.04
                ),
                child: Column(          
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 50),
                    LettersOutline(
                      text: widget.number,
                      fontSize: 140,
                      color: isHovered 
                      ? Colors.white
                      : Colors.grey,
                      strokeWidth: isHovered ? 4 : 1,
                    ),
                    const SizedBox(height: 20),
                    LettersBold(
                      text: widget.title,
                      fontSize: 30,
                      color: isHovered 
                      ? const Color(0xffCDFF00)
                      : Colors.grey,
                    ),
                    Letters(
                      text: widget.item,
                      fontSize: 16,
                      color: isHovered 
                      ? Colors.white
                      : Colors.grey,
                    ),
                    const Spacer(),
                  ],
                ),
              ), 
            ),
          ),
        ),
      ),
    );
  }
}