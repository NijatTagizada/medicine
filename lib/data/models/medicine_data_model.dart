import '../../domain/entities/medicine_data.dart';
import 'medicine_result_model.dart';

class MedicineDataModel extends MedicineData {
  const MedicineDataModel({required super.results});

  factory MedicineDataModel.fromJson(Map<String, dynamic> json) {
    return MedicineDataModel(
      results: json['results'].map((v) => MedicineResultModel.fromJson(v)),
    );
  }
}
