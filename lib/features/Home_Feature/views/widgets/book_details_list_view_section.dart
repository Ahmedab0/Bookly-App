
import 'package:flutter/material.dart';

import 'custom_slider.dart';

class BookDetailsListViewSection extends StatelessWidget {
  const BookDetailsListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const   Text(
            'You can also like',
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomSlider(
            height: MediaQuery.of(context).size.height * 0.16,
            padding: 1,
          ),
        ],
      ),
    );
  }
}
