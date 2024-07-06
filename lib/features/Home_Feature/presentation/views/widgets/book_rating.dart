import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});


  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.0, right: 10),
          child: Text('4.8',
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        Text(
          '(2390)',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
