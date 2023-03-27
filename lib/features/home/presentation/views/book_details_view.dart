import 'package:flutter/material.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_details_view_body.dart';

class BookViewView extends StatelessWidget {
  const BookViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
