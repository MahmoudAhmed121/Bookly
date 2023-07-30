import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_best_sellr.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/presentation/cubit/newes_book_cubit/newset_book_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view_item.dart';

class ListViewBestSeller extends StatefulWidget {
  const ListViewBestSeller({super.key});

  @override
  State<ListViewBestSeller> createState() => _ListViewBestSellerState();
}

class _ListViewBestSellerState extends State<ListViewBestSeller> {
 late ScrollController scrollController;
  var nextPage = 1;
  bool isLading = false;

  List<BookModel> books = [];

  @override
  void initState() {
    scrollController = ScrollController();

    scrollController.addListener(_scrollController);

    super.initState();
  }

  void _scrollController() async {
    var curantPosition = scrollController.position.pixels;
    var maxScroll = scrollController.position.maxScrollExtent;

    if (curantPosition >= 0.4 * maxScroll) {
      if (!isLading) {
        isLading = true;

        await NewsetBookCubit.get(context).getdata(pageNumber: nextPage++);
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
    return BlocConsumer<NewsetBookCubit, NewsetBookState>(
      listener: (context, state) {
        if (state is NewsetBookSuccess) {
          books.addAll(state.book);
        }
        if (state is NewsetBookPaginationFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        if (state is NewsetBookSuccess ||
            state is NewsetBookLoading ||
            state is NewsetBookPaginationFailure) {
          return SizedBox(
            height: 500,
            child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: BookListViewItem(bookModel: books[index]),
                  );
                }),
          );
        } else if (state is NewsetBookFailure) {
          return CustomError(
            messageError: state.errorMessage,
          );
        } else {
          return const ShimmerListView();
        }
      },
    );
  }
}
