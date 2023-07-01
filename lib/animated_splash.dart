import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class AnimSplash extends StatelessWidget {
  const AnimSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/malleus_walk.gif',
      nextScreen: const MyHomePage(
        title: 'splash',
      ),
      duration: 5000,
      splashIconSize: 30,
    );
  }
}
