import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Newest Books',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16,),

          Expanded(child: BestSellerListView()),
        ],
      ),
    );
  }
}
