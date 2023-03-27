import 'package:flutter/material.dart';
import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view.dart';

import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view_item.dart';

import 'package:untitled3/features/home/presentation/views/widget/custom_app_bar.dart';

import 'package:untitled3/features/home/presentation/views/widget/feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 35,
                ),
                FeatureBooksListView(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Best Seller",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListViewBestSeller(),
          ),
        )
      ],
    );
  }
}
