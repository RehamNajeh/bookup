import 'package:bookup/core/utils/service_locator.dart';
import 'package:bookup/features/home/data/models/book_model.dart';
import 'package:bookup/features/home/data/repos/home_repo_impl.dart';
import 'package:bookup/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookup/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookup/features/home/presentation/screens/home_screen.dart';
import 'package:bookup/features/search/data/repo/search_repo_impl.dart';
import 'package:bookup/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookup/features/search/presentation/screens/search_screen.dart';
import 'package:bookup/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return BlocProvider(
            create: (context) => SimilerBooksCubit(homeRepo:getIt.get<HomeRepoImpl>()),
            child:  BookDetailsScreen(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: searchScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
            child: const SearchScreen(),
          );
        },
      ),
    ],
  );
}
