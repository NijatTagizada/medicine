part of 'medicine_detail_cubit.dart';

abstract class MedicineDetailState extends Equatable {
  const MedicineDetailState();

  @override
  List<Object> get props => [];
}

class MedicineDetailLoading extends MedicineDetailState {}

class MedicineDetailSuccess extends MedicineDetailState {
  const MedicineDetailSuccess({
    required this.data,
  });
  final MedicineResult data;
}

class MedicineDetailError extends MedicineDetailState {}
