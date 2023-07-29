import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/core/utils/widget/custom_eroor_widget.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_best_sellr.dart';

import 'package:untitled3/features/home/presentation/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:url_launcher/url_launcher.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: ()async{
                        final Uri url = Uri.parse("https://www.google.com.eg/books/edition/Day_by_Day_Armageddon_Origin_to_Exile/sE9pkCGLmF0C?hl=ar&gbpv=1&dq=day+By+Day+ArmaGeddon&printsec=frontcover");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("cannot lunch $url")));
                }
                    },
                    child: CustomBookImage(
               
                      imageUrl:
                          state.book[index].volumeInfo.imageLinks?.thumbnail ?? "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(messageError: state.errorMessage);
        } else {
          return const ShimmerListView();
        }
      },
    );
  }
}
