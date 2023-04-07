
import 'package:flutter/material.dart';


import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_app_bar.dart';

import 'package:untitled3/features/home/presentation/views/widget/feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
 const  HomeViewBody({super.key, });

  @override
  Widget build(BuildContext context) {
    

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: CustomAppBar()),
              FeatureBooksListView(),
              
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ListViewBestSeller(),
          ),
        ),
      ],
    );
  }
}
