import 'package:flutter/material.dart';

import 'custom_search_field.dart';
import 'searc_result_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          CustomSearchField(),
          Divider(
            color: Colors.white,
            thickness: 0.1,
            height: 16,
          ),
          Expanded(
            child: SearchResultSection(),
          ),
        ],
      ),
    );
  }
}
