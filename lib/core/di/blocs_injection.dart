import 'package:get_it/get_it.dart';

import '../../presentation/bloc/medicine/medicine_cubit.dart';
import '../../presentation/bloc/medicine_detail/medicine_detail_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory<MedicineCubit>(
    () => MedicineCubit(repository: getIt()),
  );

  getIt.registerFactoryParam<MedicineDetailCubit, int, dynamic>(
    (id, _) => MedicineDetailCubit(id: id, repository: getIt()),
  );
}
