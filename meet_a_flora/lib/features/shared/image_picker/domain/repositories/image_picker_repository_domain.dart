import 'package:image_picker/image_picker.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/entities/image_picker_entity.dart';

abstract class ImagePickerRepositoryDomain {
    Future<Result<ImagePickerEntity, Failure>> pickImage(ImageSource source);
}
