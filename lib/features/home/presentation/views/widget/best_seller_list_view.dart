import 'package:flutter/material.dart';
import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view_item.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return BestSellerListViewItem();
        });
  }
}
