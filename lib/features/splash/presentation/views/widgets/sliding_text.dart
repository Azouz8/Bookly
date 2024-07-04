import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          "Read Free Books!",
          style: TextStyle(fontSize: 18, fontFamily: "Sectra"),
          textAlign: TextAlign.center,
        ),
      ),
      animation: slidingAnimation,
    );
  }
}
