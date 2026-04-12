import 'package:equatable/equatable.dart';

class DetailsEntity extends Equatable {
  final String result;

  const DetailsEntity({
    required this.result,
  });

  @override
  List<Object?> get props => [result];
}