import 'package:go_router/go_router.dart';
import 'package:untitled3/features/home/presentation/views/home_view.dart';
import 'package:untitled3/features/splach/presentation/views/splach_view.dart';

abstract class AppRouter{
  static const String homepage = "/homeView";
 static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplachView(),
    ),
    GoRoute(
      path: homepage,
      builder: (context, state) => HomeView(),
    ),
  ],

);
}