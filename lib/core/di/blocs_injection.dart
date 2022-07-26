import 'package:get_it/get_it.dart';

import '../../presentation/bloc/medicine/cubit/medicine_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory<MedicineCubit>(
    () => MedicineCubit(repository: getIt()),
  );
}
