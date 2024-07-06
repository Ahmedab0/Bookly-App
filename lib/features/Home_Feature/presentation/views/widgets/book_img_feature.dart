

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookImgFeature extends StatelessWidget {
  const BookImgFeature({super.key, this.imgUrl});
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 129 / 193,
        child: CachedNetworkImage(
          imageUrl: imgUrl ?? "https://libreture.com/static/images/book-placeholder.png",
          fit: BoxFit.fill,
          placeholder: (context, url) => Image.asset('assets/images/placeholder.png',fit: BoxFit.fill,),//const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Center(child: Image.asset('assets/images/noData.png',fit: BoxFit.fill,)),//Icon(Icons.error),
        ),
        /*Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgUrl ?? 'https://libreture.com/static/images/book-placeholder.png'),
            ),
          ),
        ),*/
      ),
    );
  }
}

