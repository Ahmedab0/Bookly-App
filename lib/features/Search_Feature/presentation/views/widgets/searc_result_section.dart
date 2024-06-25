
import 'package:flutter/material.dart';

import 'search_result_list_view.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Search Result',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchResultListView())
      ],
    );
  }
}
