import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/veiws/splash_view.dart';

void main() {
  runApp( const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),

    );
  }
}



