import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.firstElementOfAppBar,
      required this.secondElementOfAppBar});

  final Widget firstElementOfAppBar, secondElementOfAppBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          firstElementOfAppBar,
          secondElementOfAppBar,
        ],
      ),
    );
  }
}
