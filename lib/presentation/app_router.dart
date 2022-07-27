import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'bloc/medicine/medicine_cubit.dart';
import 'bloc/medicine_detail/medicine_detail_cubit.dart';
import 'pages/home/home_page.dart';
import 'pages/medicine_detail/medicine_detail_page.dart';

final getIt = GetIt.instance;

abstract class AppRoutes {
  static const String home = '/home';
  static const String medicineDetail = '/medicineDetail';
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => getIt.get<MedicineCubit>()..fetchData(),
          child: const HomePage(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.medicineDetail,
      builder: (context, state) {
        final int id = state.extra as int;

        return BlocProvider(
          create: (context) =>
              getIt.get<MedicineDetailCubit>(param1: id)..fetchData(),
          child: const MedicineDetailPage(),
        );
      },
    ),
  ],
);
