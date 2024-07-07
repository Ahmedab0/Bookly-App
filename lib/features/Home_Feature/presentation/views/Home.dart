import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Manager/featured_books_cubit/featured_books_cubit.dart';
import 'widgets/home_view_body.dart';

class Home extends StatelessWidget {
  static const String routeNamed = 'HomePage';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();

      },
      child: const Scaffold(
        body: SafeArea(
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
