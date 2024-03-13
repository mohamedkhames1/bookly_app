import 'package:booklyapp/const.dart';
import 'package:booklyapp/core/utlis/servere_locator.dart';
import 'package:booklyapp/features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/features/home/presentation/view_models/feature_book_cubit/feature_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utlis/app_rout.dart';

void main() {
  SetupServerLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeatureBooksCubit(
              getIt.get<HomeRepoImpl>()
            )..fetchFeatureBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsetBooksCubit(
              getIt.get<HomeRepoImpl>()
            )..fetchNewsetBooks();
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryclr,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRout.router,
      ),
    );
  }
}

//https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming
