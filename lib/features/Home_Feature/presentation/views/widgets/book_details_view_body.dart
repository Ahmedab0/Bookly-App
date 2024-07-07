import 'package:bookly_app/features/Home_Feature/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/BookModel.dart';
import 'similar_books_section.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    BookModel bookModel = ModalRoute.of(context)!.settings.arguments as BookModel;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.27),
                child: CustomBookImage(imgUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',),
              ),
              const SizedBox(
                height: 40,
              ),
               Text(bookModel.volumeInfo!.title ?? '_',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 4,
              ),
               Text(bookModel.volumeInfo!.authors?[0] ?? '_',
                  style: const TextStyle(
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
              const SimilarBooksSection(),
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

