import 'package:flutter/material.dart';

import 'best_seller_lisr_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 10),
        child: BestSellerItem(),
      ),
    );
  }
}


