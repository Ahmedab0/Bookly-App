
import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BookDetailsView.routeNamed,arguments: bookModel);
        },
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child:  Row(
          children: [
            SizedBox(
              height: 125,
              child: CustomBookImage(imgUrl: bookModel.volumeInfo!.imageLinks!.smallThumbnail ?? 'assets/images/noData.png',),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bookModel.volumeInfo!.title!,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      bookModel.volumeInfo!.authors!.first,
                      style: const TextStyle(fontSize: 14, color: Color(0xff707070)),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

