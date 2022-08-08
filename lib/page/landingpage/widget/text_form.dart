import 'package:flutter/material.dart';

class TextFieldContact extends StatelessWidget {
  const TextFieldContact({
    Key? key,
    required this.name,
    required this.hint,
    required this.fontsize,
    required this.height,
    required this.width,
    this.numbers = 1,
  }) : super(key: key);
  final String name;
  final String hint;
  final int numbers;
  final double fontsize;
  final double height;
  final double width;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: height,
        width: width,
        child: TextField(
          maxLines: numbers,
          style:  TextStyle(fontSize: fontsize, color: Colors.black),
          decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: name,
            hintText: hint,
            labelStyle: TextStyle(fontSize: fontsize, color: Colors.black),
            hintStyle: TextStyle(fontSize: fontsize, color: Colors.black),
            border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          )
        ),
      ),
    );
  }
}