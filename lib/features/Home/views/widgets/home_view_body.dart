import 'package:flutter/material.dart';

import 'best_seller_section.dart';
import 'custom_app_bar.dart';
import 'custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomSlider(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
           SliverFillRemaining(
            child:  BestSellerSection(),
          ),
        ],
      ),
    );
  }
}
