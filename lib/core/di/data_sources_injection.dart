import 'package:get_it/get_it.dart';

import '../../data/data_sources/medicine_data_source.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<MedicineDataSource>(
    () => MedicineDataSourceImpl(dio: getIt()),
  );
}
