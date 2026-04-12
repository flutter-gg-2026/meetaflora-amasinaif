import 'package:image_picker/image_picker.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/entities/image_picker_entity.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/repositories/image_picker_repository_domain.dart';


@injectable
class ImagePickerUseCase {
  final ImagePickerRepositoryDomain _repositoryData;

  ImagePickerUseCase(this._repositoryData);

   Future<Result<ImagePickerEntity, Failure>> pickImage(ImageSource source) async {
    return _repositoryData.pickImage(source);
  }
}
