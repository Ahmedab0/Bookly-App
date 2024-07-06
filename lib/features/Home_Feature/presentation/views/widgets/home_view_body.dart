import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomSlider(),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Newest Books',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 16,),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: BestSellerListView()
            //BestSellerSection(),

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
