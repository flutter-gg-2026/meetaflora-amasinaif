
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/shared/image_picker/data/datasources/image_picker_local_data_source.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/entities/image_picker_entity.dart';

import 'package:meet_a_flora/features/shared/image_picker/data/models/image_picker_model.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/repositories/image_picker_repository_domain.dart';

@LazySingleton(as: ImagePickerRepositoryDomain)
class ImagePickerRepositoryData implements ImagePickerRepositoryDomain{
  final BaseImagePickerRemoteDataSource localDataSource;


  ImagePickerRepositoryData(this.localDataSource);

@override
  Future<Result<ImagePickerEntity, Failure>> pickImage(ImageSource source) async {
    try {
      final response = await localDataSource.pickImage(source);
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
