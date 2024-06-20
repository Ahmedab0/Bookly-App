
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/Home/views/Home.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}



class _SplashViewBodyState extends State<SplashViewBody> {


  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.pushNamed(context, Home.routeNamed);
    });    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text('Read Free Books',textAlign: TextAlign.center,),
      ],
    );
  }
}
