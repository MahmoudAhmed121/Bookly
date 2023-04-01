import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/presentation/cubit/similar_books_cubit/similar_books_cubit.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_details_view_body.dart';

class BookView extends StatefulWidget {
  const BookView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getdata(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
