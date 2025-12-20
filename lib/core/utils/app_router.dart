import 'package:bookup/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookup/features/home/presentation/screens/home_screen.dart';
import 'package:bookup/features/search/presentation/screens/search_screen.dart';
import 'package:bookup/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashScreen = '/';
  static const String homeScreen = '/home';
  static const String bookDetailsScreen = '/bookDetails';
  static const String searchScreen = '/search';
  static final router = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: bookDetailsScreen,
        builder: (context, state) {
          return const BookDetailsScreen();
        },
      ),
      GoRoute(
        path: searchScreen,
        builder: (context, state) {
          return const SearchScreen();
        },
      ),
    ],
  );
}
