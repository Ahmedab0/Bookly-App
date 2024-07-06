import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/features/Home_Feature/presentation/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'best_seller_lisr_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: List.generate(state.books.length, (index) =>
               Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: BestSellerItem(bookModel: state.books[index],),
              ),),
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return CustomFailureMessage(errorMsg: state.errorMsg);
        } else {
          return const LoadingProgressIndicator();
        }
      },
    );
  }
}


