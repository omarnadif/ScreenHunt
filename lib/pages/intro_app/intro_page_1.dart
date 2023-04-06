import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,

      child: Column(
        children: [
          Text(
            'Welcome to My App',
            style: TextStyle(
              fontFamily: 'Blanka',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Image.asset(

            'images/r.png',
            height: 300,
          ),
        ],
      ),
    );
  }
}
