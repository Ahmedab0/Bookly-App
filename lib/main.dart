import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash_feature/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'features/Home_Feature/views/Home.dart';
import 'features/Home_Feature/views/book_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData
          .dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      onGenerateRoute: (settings) {
      switch (settings.name) {
        case Home.routeNamed:
          return PageTransition(child: const Home(), type: PageTransitionType.leftToRight);
          //break;
       case BookDetailsView.routeNamed:
          return PageTransition(child: const BookDetailsView(), type: PageTransitionType.leftToRight);
          //break;
        default:
          return null;
      }
    },

    );
  }
}


