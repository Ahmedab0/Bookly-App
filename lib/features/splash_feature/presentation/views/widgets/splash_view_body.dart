
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(child: Text('Bookly',style: TextStyle(color: Colors.white,fontSize: 30),)),
      ],
    );
  }
}