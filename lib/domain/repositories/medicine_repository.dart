import '../../core/either.dart';
import '../../core/error/failure.dart';
import '../entities/medicine_data.dart';

abstract class MedicineRepository {
  Future<Either<Failure, MedicineData>> getMedicine();
  Future<Either<Failure, MedicineData>> searchMedicine(String query);
}
