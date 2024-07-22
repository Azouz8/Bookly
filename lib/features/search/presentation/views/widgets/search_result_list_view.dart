import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        // itemBuilder: (context, index) => BookListViewItem(),
        itemBuilder: (context, index) => Container(),
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
