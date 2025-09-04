import 'package:bookly_app/core/utilts/services_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/persentation/view_models/similar%20books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/veiws/splash_view.dart';

abstract class appRouter {
  static final KHomeView = '/homeView';
  static final KBookDetailsView = '/bookDetailsView';
  static final KSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      //  (/) يعني يبتدي الاسكرينات من الsymbol ده
      GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
  create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
  child: BookDetailsView(bookModel: state.extra as BookModel,),
),
      ),
      GoRoute(path: KSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
