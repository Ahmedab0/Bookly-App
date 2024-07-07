
import 'package:flutter/material.dart';

import 'slider_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        //padding: const EdgeInsets.only(left: 1),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              //Navigator.pushNamed(context, BookDetailsView.routeNamed,arguments: state.books[index]);
            },
            child: const SliderItem(
              imgUrl: 'assets/images/test.png',//'state.books[index].volumeInfo!.imageLinks!.thumbnail',
            ),
          );
        },
      ),
    );
  }
}