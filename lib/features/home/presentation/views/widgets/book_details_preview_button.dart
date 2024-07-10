import 'package:flutter/material.dart';
import 'buy_preview_button_side.dart';

class BookDetailsPreviewButton extends StatelessWidget {
  const BookDetailsPreviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuyPreviewButtonSide(
            bottomLeft: 16,
            topLeft: 16,
            text: "19.99 \$",
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          BuyPreviewButtonSide(
            bottomRight: 16,
            topRight: 16,
            text: "Free Preview",
            backgroundColor: const Color(0xffe57965),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

