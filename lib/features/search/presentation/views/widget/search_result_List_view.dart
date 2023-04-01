import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/route/app_router.dart';
import 'package:untitled3/core/utils/shimmer/cutom_loading_search.dart';

import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/features/search/presentation/cubit/cubit/search_cubit.dart';
import '../../../../home/presentation/views/widget/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, this.character});
  final character;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is SearchSuccess) {
        return ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          itemCount: state.books.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.KbookDetailsView,
                extra: state.books[index],
              );
            },
            child: BookListViewItem(bookModel: state.books[index]),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 15.0),
        );
      }
      if (state is SearchFailure) {
        return CustomError(messageError: state.errorMessage);
      } else {
        return ShimmerSearch();
      } 
    });
  }
}
