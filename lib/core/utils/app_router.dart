
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/Home_Feature/presentation/views/Home.dart';
import '../../features/Home_Feature/presentation/views/book_details_view.dart';
import '../../features/Search_Feature/presentation/views/search_view.dart';

class AppRouter {

  // Routing Method // the better is moving it to appRouting.dart file
  PageTransition? switchRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeNamed:
        return PageTransition(
            child: const Home(), type: PageTransitionType.leftToRight);
      case BookDetailsView.routeNamed:
        return PageTransition(
            child: const BookDetailsView(), type: PageTransitionType.leftToRight, settings: settings);
      case SearchView.routeNamed:
        return PageTransition(
            child: const SearchView(), type: PageTransitionType.leftToRight);
      default:
        return null;
    }
  }

}