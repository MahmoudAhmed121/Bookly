import 'package:flutter/material.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_details_view_body.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
