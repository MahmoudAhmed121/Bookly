import 'package:go_router/go_router.dart';
import 'package:untitled3/features/home/presentation/views/book_details_view.dart';
import 'package:untitled3/features/home/presentation/views/home_view.dart';
import 'package:untitled3/features/search/presentation/views/search_view.dart';
import 'package:untitled3/features/splach/presentation/views/splach_view.dart';

abstract class AppRouter{
  static const String Khomepage = "/homeView";
  static const String KbookDetailsView = "/bookDetails";
    static const String ksearch = "/search";
 static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplachView(),
    ),
    GoRoute(
      path: Khomepage,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: KbookDetailsView,
      builder: (context, state) => BookView(),
    ),
     GoRoute(
      path: ksearch,
      builder: (context, state) => SearchView(),
    ),
  ],





);
}