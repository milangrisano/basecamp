import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key? key,
    required this.name,
    required this.hint,
    required this.fontsize,
    this.numbers = 1,
  }) : super(key: key);
  final String name;
  final String hint;
  final int numbers;
  final double fontsize;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        cursorColor: const Color(0xffCDFF00),
        maxLines: numbers,
        style:  TextStyle(fontSize: fontsize, color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[900],

          alignLabelWithHint: true,
          labelText: name,
          hintText: hint,
          labelStyle: TextStyle(fontSize: fontsize, color: Colors.white),
          hintStyle: TextStyle(fontSize: fontsize, color: Colors.white),
          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
        )
      ),
    );
  }
}