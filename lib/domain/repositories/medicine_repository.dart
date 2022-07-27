import '../../core/either.dart';
import '../../core/error/failure.dart';
import '../entities/medicine_data.dart';
import '../entities/medicine_result.dart';

abstract class MedicineRepository {
  Future<Either<Failure, MedicineData>> getMedicine();
  Future<Either<Failure, MedicineData>> searchMedicine(String query);
  Future<Either<Failure, MedicineResult>> getMedicineDetail(int id);
}
