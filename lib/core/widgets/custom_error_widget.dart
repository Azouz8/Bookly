import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({super.key , required this.errMessage});
  String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage , style: Styles.textStyle18,);
  }
}
