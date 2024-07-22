import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  var text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: text,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          icon: const Opacity(opacity: 0.8, child: Icon(FeatherIcons.search)),
          onPressed: () {
            if(text.text != ""){
              BlocProvider.of<SearchBooksCubit>(context).fetchSearchedBooks(search: text.text);
            }
          },
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
