import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuyPreviewButtonSide extends StatelessWidget {
  const BuyPreviewButtonSide({
    super.key,
    this.topRight = 0,
    this.topLeft = 0,
    this.bottomRight = 0,
    this.bottomLeft = 0,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.onTap,
  });

  final double bottomLeft, bottomRight, topLeft, topRight;
  final String text;
  final Color backgroundColor, textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          // width: 140,
          height: 50,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(topRight),
                topLeft: Radius.circular(topLeft),
                bottomRight: Radius.circular(bottomRight),
                bottomLeft: Radius.circular(bottomLeft),
              )),
          child: Center(
              child: Text(
            text,
            style: Styles.textStyle16Bold
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
        ),
      ),
    );
  }
}
