import 'package:bookly_app/features/Home_Feature/views/widgets/book_img_feature.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBookDetailsAppBar(),
        //BookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: const BookImgFeature(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text('Rudyard Kipling',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff707070),
            )),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(height: 37,),

      ],
    );
  }
}


