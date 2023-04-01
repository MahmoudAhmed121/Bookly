import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/route/app_router.dart';
import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_feature.dart';
import 'package:untitled3/features/home/presentation/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_image.dart';

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
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.KbookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookImage(
                  
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            "",
                  ),
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomError(
          messageError: state.errorMessage,
        );
      } else {
        return Expanded(child: CustomLoadingForfeature());
      }
    });
  }
}
