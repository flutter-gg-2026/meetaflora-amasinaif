import 'dart:io';

import 'package:equatable/equatable.dart';

class ImagePickerEntity extends Equatable {
  final File image;

  const ImagePickerEntity({
   
   required this.image});

  @override
  List<Object?> get props => [image];
}
