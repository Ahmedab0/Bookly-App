
import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../Home_Feature/presentation/views/widgets/best_seller_lisr_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BestSellerItem(bookModel: BookModel(),), /// need to edit
      ),
    );
  }
}