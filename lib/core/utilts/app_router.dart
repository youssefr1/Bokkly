import 'package:bookly_app/features/home/persentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/veiws/splash_view.dart';

abstract class appRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/',builder: (context,state)=>SplashView()),
      GoRoute(path: '/homeView',builder: (context,state)=>HomeView())
    ],
  );

}