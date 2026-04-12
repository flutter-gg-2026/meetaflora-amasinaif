import 'dart:io';

import 'package:meet_a_flora/features/shared/image_picker/domain/entities/image_picker_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_picker_model.freezed.dart';

@freezed
abstract class ImagePickerModel with _$ImagePickerModel {
  const factory ImagePickerModel({
    required File image,
    
  }) = _ImagePickerModel;
}


extension ImagePickerModelMapper on ImagePickerModel {
  ImagePickerEntity toEntity() {
    return ImagePickerEntity(image: image);
  }
  }
