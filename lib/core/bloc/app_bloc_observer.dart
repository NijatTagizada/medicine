import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log(
      '${bloc.runtimeType} is created.',
      name: 'AppBlocObserver',
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log(
      '${bloc.runtimeType} => $change',
      name: 'AppBlocObserver',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log(
      '${bloc.runtimeType} => $error',
      error: stackTrace,
      name: 'AppBlocObserver',
    );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log(
      '${bloc.runtimeType} is closed.',
      name: 'AppBlocObserver',
    );
  }
}
