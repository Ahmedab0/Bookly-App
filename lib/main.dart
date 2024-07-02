import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/Home_Feature/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home_Feature/presentation/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/splash_feature/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/service_locator.dart';
import 'features/Home_Feature/presentation/Manager/featured_books_cubit/featured_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (BuildContext context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        onGenerateRoute: AppRouter().switchRoute,
        /* (settings) {
          switch (settings.name) {
            case Home.routeNamed:
              return PageTransition(
                  child: const Home(), type: PageTransitionType.leftToRight);
            //break;
            case BookDetailsView.routeNamed:
              return PageTransition(
                  child: const BookDetailsView(),
                  type: PageTransitionType.leftToRight);
            //break;
            default:
              return null;
          }
        },*/
      ),
    );
  }
}
