import 'package:flutter/material.dart';
import 'package:group_55_animations/explicit_animation_screen.dart';
import 'package:group_55_animations/home_screen.dart';
import 'package:group_55_animations/implicit_animtion_screen.dart';

import 'screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExplicitAnimationScreen(),
    );
  }
}
