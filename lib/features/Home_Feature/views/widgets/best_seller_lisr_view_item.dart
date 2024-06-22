import 'dart:developer';

import 'package:bookly_app/features/Home_Feature/views/book_details_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        log('message: clicked');
        Navigator.pushNamed(context, BookDetailsView.routeNamed);
        },
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 125,
              child: AspectRatio(
                aspectRatio: 70 / 105,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.book),
                  )),
                ),
              ),
            ),
            const SizedBox(width: 30,),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The Jungle Book',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      'Rudyard Kipling',
                      style: TextStyle(fontSize: 14, color: Color(0xff707070)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: TextStyle(
                          fontSize: 20,
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

