import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          const SearchResultListView(),
        ],
      ),
    );
  }
}

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

