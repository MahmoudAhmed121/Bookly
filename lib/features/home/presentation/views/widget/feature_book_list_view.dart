import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/route/app_router.dart';
import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_feature.dart';
import 'package:untitled3/features/home/presentation/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_image.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key});

  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}

class _FeatureBooksListViewState extends State<FeatureBooksListView> {
  late ScrollController scrollController;
  var nextPage = 1;
  bool isLading = false;
  @override
  void initState() {
    scrollController = ScrollController();

    scrollController.addListener(_scrollController);

    super.initState();
  }

  void _scrollController() async {
    var curantPosition = scrollController.position.pixels;
    var maxScroll = scrollController.position.maxScrollExtent;

    if (curantPosition >= 0.7 * maxScroll) {
      if (!isLading) {
    
        isLading = true;
      
        await FeaturedBooksCubit.get(context).getData(pageNumber: nextPage++);
        isLading = false;
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kbookDetailsView,
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
        return const Expanded(child: CustomLoadingForfeature());
      }
    });
  }
}
