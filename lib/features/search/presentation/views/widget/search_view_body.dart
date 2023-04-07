import 'package:flutter/material.dart';


import 'package:untitled3/features/search/presentation/views/widget/custom_search_text_faild.dart';
import 'package:untitled3/features/search/presentation/views/widget/search_result_List_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          CustomSearcTextFaild(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
