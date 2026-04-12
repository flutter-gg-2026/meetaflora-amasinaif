import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class DiscoveryState extends Equatable {
  const DiscoveryState();

  @override
  List<Object?> get props => [];
}

class DiscoveryInitialState extends DiscoveryState {}
class DiscoverySuccessState extends DiscoveryState {
  final String result;

  const DiscoverySuccessState(this.result);

  @override
  List<Object?> get props => [result];
}

class DiscoveryImageSelectedState extends DiscoveryState {
  final File image;
  const DiscoveryImageSelectedState(this.image);
}
class DiscoveryErrorState extends DiscoveryState {
  final String message;
  const DiscoveryErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

