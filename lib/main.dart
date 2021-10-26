import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AnimatedSplashScreen(
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.lightGreen,
        splash: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'PERSONALITY QUIZ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        ),
        splashIconSize: 200.0,
        duration: 3000,
        nextScreen: const myHomePage(),
      ),
    );
  }
}
