import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

final getIt = GetIt.instance;

abstract class AppRoutes {
  static const String home = '/home';
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) {
        return const MyHomePage();
      },
    ),
  ],
);
