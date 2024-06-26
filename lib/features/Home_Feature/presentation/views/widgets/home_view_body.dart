import 'package:flutter/material.dart';

import 'best_seller_section.dart';
import 'custom_app_bar.dart';
import 'custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
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
            child: BestSellerSection(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff979797).withOpacity(0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(

            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
              (index) => IconButton(
                icon: const Icon(Icons.home,size: 32),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
