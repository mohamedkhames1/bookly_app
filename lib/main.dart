import 'package:booklyapp/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utlis/app_rout.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryclr,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),

      routerConfig: AppRout.router,
    );
  }
}
