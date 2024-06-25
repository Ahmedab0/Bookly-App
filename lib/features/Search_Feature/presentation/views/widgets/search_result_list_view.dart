
import 'package:flutter/material.dart';

import '../../../../Home_Feature/views/widgets/best_seller_lisr_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: BestSellerItem(),
      ),
    );
  }
}