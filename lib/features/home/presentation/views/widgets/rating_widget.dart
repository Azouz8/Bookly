import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xfff9e253),
        ),
        const Text(
          "  4.8  ",
          style: Styles.textStyle16Bold,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14Normal
              .copyWith(color: const Color(0xffb6b5bb)),
        ),
      ],
    );
  }
}