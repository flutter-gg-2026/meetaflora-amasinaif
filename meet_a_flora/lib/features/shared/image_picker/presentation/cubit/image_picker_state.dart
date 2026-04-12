import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();

  @override
  List<Object?> get props => [];
}

class ImagePickerInitialState extends ImagePickerState {}
class ImagePickerSuccessState extends ImagePickerState {
  final File image;
  const ImagePickerSuccessState(this.image);

  @override
  List<Object?> get props => [image];
}

class ImagePickerErrorState extends ImagePickerState {
  final String message;
  const ImagePickerErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

