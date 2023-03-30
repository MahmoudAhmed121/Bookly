import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled3/core/widgets/custom_error_widget.dart';
import 'package:untitled3/core/widgets/custom_loading_indicator.dart';
import 'package:untitled3/features/home/presentation/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_container_.dart';



class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomBookContainer();
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage,);
        }else{
        return CustomLoadingIndicator();
      }
      }
    );
  }
}
