import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entities/medicine_result.dart';
import '../../../domain/repositories/medicine_repository.dart';

part 'medicine_state.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit({required this.repository}) : super(MedicineLoading()) {
    _searchTerms
        .distinct()
        .where((event) => event.length >= 3)
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 500)))
        .switchMap((query) async* {
      emit(MedicineLoading());
      yield await repository.searchMedicine(query);
    }).listen((event) {
      event.when(error: (e) {
        emit(MedicineError());
      }, success: (data) {
        emit(MedicineSuccess(data: data.results));
      });
    });
  }

  final _searchTerms = BehaviorSubject<String>();
  final MedicineRepository repository;

  void fetchData() async {
    final either = await repository.getMedicine();

    either.when(
      error: (e) {
        emit(MedicineError());
      },
      success: (data) {
        emit(MedicineSuccess(data: data.results));
      },
    );
  }

  void search(String username) {
    _searchTerms.add(username);
  }

  @override
  Future<void> close() {
    _searchTerms.close();
    return super.close();
  }
}
