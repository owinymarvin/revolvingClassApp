import 'package:cartowingservice/pages/home_screen.dart';
import 'package:cartowingservice/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class CarTowingService extends StatefulWidget {
  const CarTowingService({super.key});

  @override
  State<CarTowingService> createState() => _CarTowingServiceState();
}

class _CarTowingServiceState extends State<CarTowingService> {
  Widget? currentAppScreen;

  @override
  void initState() {
    currentAppScreen = WelcomeScreen();
    super.initState();
  }

  void screenSwitcher() {
    setState(() {
      currentAppScreen = HomeScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 117, 5, 145),
                Color.fromARGB(155, 117, 5, 145),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: currentAppScreen,
        ),
      ),
    );
  }
}
