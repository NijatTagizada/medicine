import '../../core/either.dart';
import '../../core/error/failure.dart';
import '../../domain/entities/medicine_data.dart';
import '../../domain/repositories/medicine_repository.dart';
import '../data_sources/medicine_data_source.dart';

class MedicineRepositoryImpl implements MedicineRepository {
  const MedicineRepositoryImpl({
    required this.dataSource,
  });

  final MedicineDataSource dataSource;

  @override
  Future<Either<Failure, MedicineData>> getMedicine() async {
    try {
      final result = await dataSource.getMedicine();
      return Success(result);
    } catch (e) {
      return Error(Failure(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MedicineData>> searchMedicine(String query) {
    // TODO: implement searchMedicine
    throw UnimplementedError();
  }
}
