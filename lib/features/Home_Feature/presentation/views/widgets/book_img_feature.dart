

import 'package:flutter/material.dart';


class BookImgFeature extends StatelessWidget {
  const BookImgFeature({super.key, this.imgUrl});
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}

