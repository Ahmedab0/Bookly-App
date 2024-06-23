import 'package:bookly_app/features/Home_Feature/views/widgets/book_img_feature.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBookDetailsAppBar(),
        BookDetails(),
        SizedBox(
          height: 40,
        ),
        Container(
          color: Colors.cyan,
          child: Text('hhhhhhhhh'),
        ),
      ],
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.23),
          child: const BookImgFeature(),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'The Jungle Book',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 4,
        ),
        Text('Rudyard Kipling',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff707070),
            )),
        SizedBox(
          height: 14,
        ),
        BookRating(),
      ],
    );
  }
}
