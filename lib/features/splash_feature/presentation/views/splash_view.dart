
import 'package:flutter/material.dart';

import '../../../Home_Feature/views/Home.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}



class _SplashViewState extends State<SplashView> {
  
  
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), ()=> Navigator.pushNamed(context, Home.routeNamed));
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}


