import 'package:equatable/equatable.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object?> get props => [];
}

class DetailsInitialState extends DetailsState {}
class DetailsSuccessState extends DetailsState {
  final String result;

  const DetailsSuccessState(this.result);

  @override
  List<Object?> get props => [result];
}

class DetailsErrorState extends DetailsState {
  final String message;
  const DetailsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

