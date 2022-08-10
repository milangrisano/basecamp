import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const LandingPageLayout(),
      routes: <String,WidgetBuilder>{
        '/home': (context) => const LandingPageLayout(),

      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(
            const Color(0xffCDFF00)
          )
        )
      )
    );
  }
}