import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home_Feature/presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../book_details_view.dart';
import 'slider_item.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, this.height, this.padding});

  final double? height;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccessState) {
        return SizedBox(
          height: height ?? MediaQuery.of(context).size.height * 0.28,
          child: ListView.builder(
            padding: EdgeInsets.only(left: padding ?? 20),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, BookDetailsView.routeNamed,arguments: state.books[index]);
                },
                child: SliderItem(
                  imgUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail,
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailureState) {
        return CustomFailureMessage(errorMsg: state.errorMsg);
      } else {
        return const LoadingProgressIndicator();
      }
    });
  }
}
