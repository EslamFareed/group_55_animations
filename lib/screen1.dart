import 'package:flutter/material.dart';
import 'package:group_55_animations/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, _buildRoute());
          },
          child: const Text("GO To"),
        ),
      ),
    );
  }

  Route _buildRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const Screen2();
      },
      transitionDuration: const Duration(seconds: 3),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // return SizeTransition(
        //   sizeFactor: sizeFactor,
        // );
        // return ScaleTransition(
        //   scale: animation.drive(Tween(begin: 0.0, end: 1.0)),
        //   child: child,
        // alignment: Alignment.topLeft,
        // );
        var begin = Offset(0, 1);
        var end = const Offset(0, 0);
        var tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: FadeTransition(
            opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
            child: child,
          ),
        );
        // return FadeTransition(
        //   opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
        //   child: child,
        // );
      },
    );
  }
}
