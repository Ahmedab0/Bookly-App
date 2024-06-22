import 'package:flutter/material.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  static const routeNamed = 'routeNamed';

  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
