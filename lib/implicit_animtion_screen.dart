import 'package:flutter/material.dart';

class ImplicitAnimationScreen extends StatefulWidget {
  const ImplicitAnimationScreen({super.key});

  @override
  State<ImplicitAnimationScreen> createState() =>
      _ImplicitAnimationScreenState();
}

class _ImplicitAnimationScreenState extends State<ImplicitAnimationScreen> {
  double size = 100;
  var st = CrossFadeState.showFirst;
  var visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit"),
      ),
      body: Column(
        children: [
          // AnimatedContainer(
          //   duration: const Duration(seconds: 2),
          //   width: size,
          //   height: size,
          //   color: Colors.red,
          // ),
          // AnimatedCrossFade(
          //   firstChild: Text("hello first widget"),
          //   secondChild: Text("hello second widget"),
          //   crossFadeState: st,
          //   duration: const Duration(seconds: 2),
          // ),
          AnimatedOpacity(
            opacity: visible ? 1 : 0,
            duration: Duration(seconds: 3),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                visible = !visible;
                // if (size == 200) {
                //   size = 100;
                // } else {
                //   size = 200;
                // }
                // st = CrossFadeState.showSecond;
              });
            },
            child: const Text("Play"),
          ),
        ],
      ),
    );
  }
}
