import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.5 / 2.7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // const Column(
          //   children: [
          //     Row(
          //       children: [
          //         Text("Book Name"),
          //       ],
          //     ),
          //     Text("Author Name"),
          //     Row(
          //       children: [
          //         Text("Price"),
          //         Spacer(),
          //         Icon(
          //           Icons.star,
          //           color: Colors.amberAccent,
          //         ),
          //         Text("4.8"),
          //         Text("(2390)"),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
