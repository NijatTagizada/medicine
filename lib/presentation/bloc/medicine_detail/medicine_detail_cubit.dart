import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/medicine_result.dart';
import '../../../domain/repositories/medicine_repository.dart';

part 'medicine_detail_state.dart';

class MedicineDetailCubit extends Cubit<MedicineDetailState> {
  MedicineDetailCubit({
    required this.id,
    required this.repository,
  }) : super(MedicineDetailLoading());

  final MedicineRepository repository;
  final int id;

  void fetchData() async {
    final either = await repository.getMedicineDetail(id);

    either.when(
      error: (e) {
        emit(MedicineDetailError());
      },
      success: (data) {
        emit(MedicineDetailSuccess(data: data));
      },
    );
  }
}
