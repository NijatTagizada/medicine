part of 'medicine_cubit.dart';

abstract class MedicineState extends Equatable {
  const MedicineState();

  @override
  List<Object> get props => [];
}

class MedicineLoading extends MedicineState {}

class MedicineSuccess extends MedicineState {
  final List<MedicineResult> data;
  const MedicineSuccess({
    required this.data,
  });
}

class MedicineError extends MedicineState {}

class MedicineSearch extends MedicineState {}
