import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  const Failure({
    required this.error,
  });

  final String error;

  @override
  List<Object> get props => [error];
}
