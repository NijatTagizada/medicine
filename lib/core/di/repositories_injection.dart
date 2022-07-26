import 'package:get_it/get_it.dart';

import '../../data/repositories/medicine_repository_impl.dart';
import '../../domain/repositories/medicine_repository.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<MedicineRepository>(
    () => MedicineRepositoryImpl(dataSource: getIt()),
  );
}
