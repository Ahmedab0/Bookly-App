
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class BookImgFeature extends StatelessWidget {
  const BookImgFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 129 / 193,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(22),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.book),
          ),
        ),
      ),
    );
  }
}