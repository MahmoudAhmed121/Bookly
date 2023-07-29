import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_best_sellr.dart';

import 'package:untitled3/features/home/presentation/cubit/newes_book_cubit/newset_book_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view_item.dart';
class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return SizedBox(
           height: 172,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: state.book.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: BookListViewItem(bookModel: state.book[index]),
                  );
                }),
          );
        } else if (state is NewsetBookFailure) {
          return CustomError(
            messageError: state.errorMessage,
          );
        } else {
          return const ShimmerListView(
           
          );
        }
      },
    );
  }
}
