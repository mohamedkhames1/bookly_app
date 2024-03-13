import 'package:booklyapp/features/home/presentation/view/book_details_view.dart';
import 'package:booklyapp/features/home/presentation/view/homeView.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRout {

  static const String homeview='/homeView';
  static const String book_details='/bookdetails';

static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ), GoRoute(
      path: homeview,
      builder: (context, state) => const HomeView(),
    ),GoRoute(
      path: book_details,
      builder: (context, state) => const BookDetailsView(),
    ),
  ],
);}

