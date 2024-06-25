import 'package:bookly_app/features/Search_Feature/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SearchView.routeNamed);
            },
            icon: const Icon(
              Icons.search,
              size: 26,
            ),
          )
        ],
      ),
    );
  }
}