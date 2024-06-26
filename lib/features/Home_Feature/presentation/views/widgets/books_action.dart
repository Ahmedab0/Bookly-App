
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 37.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              txt: '19.99€',
              bgColor: Colors.white,
              txtColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              txt: 'Free preview',
              bgColor: Color(0xffEF8262),
              txtColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}