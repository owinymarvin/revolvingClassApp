import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage('lib/images/welcome_image.jpg'),
            width: 300.0,
            height: 300,
          )
        ],
      ),
    );
  }
}
