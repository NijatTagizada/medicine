import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/repositories/medicine_repository.dart';

part 'medicine_state.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit({required this.repository}) : super(MedicineLoading());

  final MedicineRepository repository;

  void fetchData() async {
    final either = await repository.getMedicine();

    either.when(
      error: (e) {
        emit(MedicineError());
      },
      success: (data) {
        emit(MedicineSuccess());
      },
    );
  }
}
