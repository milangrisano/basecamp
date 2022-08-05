import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double width;
  final double height;
  const Logo({
    Key? key, 
    required this.width, 
    required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}