import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:bookly_app/core/utilts/services_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view_models/newset%20books/newset_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/persentation/view_models/featured books/featured_books_cubit.dart';
import 'features/splash/presentation/veiws/splash_view.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>(),
          )..featchFeaturedBooks(),
        ),

        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchNewsetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
