import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height: MediaQuery.of(context).size.height * 0.28,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: AspectRatio(
          aspectRatio: 129 / 193,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(AssetsData.testImg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}