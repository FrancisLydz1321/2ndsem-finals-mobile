import 'package:_fourtho/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Birthday Card',
          style: TextStyle(
              fontFamily: FontFamily.playfairDisplay,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(),
    );
  }
}
