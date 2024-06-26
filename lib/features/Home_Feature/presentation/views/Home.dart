import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class Home extends StatelessWidget {
  static const String routeNamed = 'HomePage';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
