import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/shared/image_picker/data/models/image_picker_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';


abstract class BaseImagePickerRemoteDataSource {
  Future<ImagePickerModel> pickImage(ImageSource source);
}


@LazySingleton(as: BaseImagePickerRemoteDataSource)
class ImagePickerLocalDataSource implements BaseImagePickerRemoteDataSource {
   final ImagePicker _picker = ImagePicker();

    @override
  Future<ImagePickerModel> pickImage(ImageSource source) async {
    try {
        final pickedFile = await _picker.pickImage(
        source: source,
      );

      if (pickedFile == null) {
        throw Exception("No image selected");
      }

      return ImagePickerModel(image: File(pickedFile.path));    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
