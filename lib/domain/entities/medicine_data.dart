import 'package:equatable/equatable.dart';

import 'medicine_result.dart';

class MedicineData extends Equatable {
  final List<MedicineResult> results;

  const MedicineData({required this.results});

  @override
  List<Object> get props => [results];
}
