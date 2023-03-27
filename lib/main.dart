import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/core/utils/app_router.dart';
import 'package:untitled3/features/splach/presentation/views/splach_view.dart';

void main() {
  runApp(const Splac());
}

class Splac extends StatelessWidget {
  const Splac({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mycolor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
