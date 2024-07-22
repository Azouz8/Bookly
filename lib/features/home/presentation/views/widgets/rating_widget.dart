import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
    required this.count,
  });

  final num rating, count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xfff9e253),
          size: 18,
        ),
        Text(
          "  $rating  ",
          style: Styles.textStyle16Bold,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "( $count )",
            style: Styles.textStyle14SemiBold,
          ),
        ),
      ],
    );
  }
}
