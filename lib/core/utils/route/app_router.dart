import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/data/repos/home_repo._impl.dart';
import 'package:untitled3/features/home/presentation/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:untitled3/features/home/presentation/views/book_details_view.dart';
import 'package:untitled3/features/home/presentation/views/home_view.dart';
import 'package:untitled3/features/search/presentation/cubit/cubit/search_cubit.dart';
import 'package:untitled3/features/search/presentation/data/repo/search_repo_impl.dart';
import 'package:untitled3/features/search/presentation/views/search_view.dart';
import 'package:untitled3/features/splach/presentation/views/splach_view.dart';

abstract class AppRouter {
  static const String KHomepage = "/homepage";
  static const String KbookDetailsView = "/bookDetails";
  static const String ksearch = "/search";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: KHomepage,
        builder: (context, state) =>const HomeView(),
      ),
      GoRoute(
        path: KbookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(HomeRepoImpl())..getdata(category: ""),
          child: BookView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: ksearch,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchCubit(SearchDataImpl())..fetchSearchedBooks(),
          child:const SearchView(),
        ),
      ),
    ],
  );
}
