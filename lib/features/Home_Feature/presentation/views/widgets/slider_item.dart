import 'package:flutter/material.dart';

import 'book_img_feature.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: BookImgFeature(),
    );
  }
}


