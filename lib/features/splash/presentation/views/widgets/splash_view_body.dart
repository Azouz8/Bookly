import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          "Read Free Books!",
          style: TextStyle(fontSize: 18 , fontFamily: "Sectra"),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
