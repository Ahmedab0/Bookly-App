import 'package:flutter/material.dart';

import 'book_img_feature.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, this.imgUrl});
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: BookImgFeature(imgUrl: imgUrl),
      /*AspectRatio(
        aspectRatio: 129 / 193,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgUrl ?? 'https://libreture.com/static/images/book-placeholder.png'),
            ),
          ),
        ),
      ),*/
    );
  }
}
