import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: 
        Center(
          child: Column(
            children: [
              Image(image:AssetImage('images/logo.png')),
              Text("save money, don't just do it"),
            ],
          ),
        ),
    );
  }
}