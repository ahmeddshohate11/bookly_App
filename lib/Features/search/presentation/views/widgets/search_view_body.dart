import 'package:bookly/Features/search/presentation/views/widgets/custome_search_text_field.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeSearchTextField(),
      ],
    );
  }
}
