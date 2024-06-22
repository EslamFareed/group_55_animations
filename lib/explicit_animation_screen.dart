import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> sizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    sizeAnimation = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween<double>(begin: 30.0, end: 40.0), weight: 1),
      TweenSequenceItem(
          tween: Tween<double>(begin: 40.0, end: 30.0), weight: 1),
    ]).animate(controller);
    colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(controller);
    controller.addStatusListener((status) {
      print(status);
    });

    controller.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explicit"),
      ),
      body: Center(
          child: IconButton(
        onPressed: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        icon: Icon(
          Icons.favorite,
          color: colorAnimation.value,
          size: sizeAnimation.value,
        ),
      )
          // child: AnimatedBuilder(
          //   animation: sizeAnimation,
          //   builder: (context, child) {
          // return IconButton(
          //   onPressed: () {
          //     controller.forward();
          //   },
          //   icon: Icon(
          //     Icons.favorite,
          //     size: sizeAnimation.value,
          //   ),
          // );
          //   },
          // ),
          ),
    );
  }
}
