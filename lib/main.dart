import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/core/utils/route/app_router.dart';
import 'package:untitled3/core/utils/simple_bloc_observer.dart';
import 'package:untitled3/features/home/data/repos/home_repo._impl.dart';
import 'package:untitled3/features/home/presentation/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled3/features/home/presentation/cubit/newes_book_cubit/newset_book_cubit.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const Splac());
  Bloc.observer = SimbleBlocObserver();
}

class Splac extends StatelessWidget {
  const Splac({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(HomeRepoImpl())..getData()),
        BlocProvider(
          create: (context) => NewsetBookCubit(HomeRepoImpl())..getdata(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mycolor,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
