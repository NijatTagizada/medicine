import 'package:dio/dio.dart';

import '../../core/constants/endpoints.dart';
import '../models/medicine_data_model.dart';

abstract class MedicineDataSource {
  Future<MedicineDataModel> getMedicine();
  Future<MedicineDataModel> searchMedicine(String query);
}

class MedicineDataSourceImpl implements MedicineDataSource {
  const MedicineDataSourceImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<MedicineDataModel> getMedicine() async {
    final result = await dio.get(Endpoints.medicine);
    return MedicineDataModel.fromJson(result.data);
  }

  @override
  Future<MedicineDataModel> searchMedicine(String query) async {
    final result = await dio.get(
      Endpoints.medicine,
      queryParameters: {
        Queries.search: query,
      },
    );
    return MedicineDataModel.fromJson(result.data);
  }
}
