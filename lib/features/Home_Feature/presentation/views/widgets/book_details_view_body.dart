import 'package:bookly_app/features/Home_Feature/presentation/views/widgets/book_img_feature.dart';
import 'package:flutter/material.dart';

import 'book_details_list_view_section.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.27),
                child: const BookImgFeature(),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'The Jungle Book',
                textAlign: TextAlign.center,
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
              const SizedBox(
                height: 37,
              ),
              const BooksAction(),
              const Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              const BookDetailsListViewSection(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}

