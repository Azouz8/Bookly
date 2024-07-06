import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}
