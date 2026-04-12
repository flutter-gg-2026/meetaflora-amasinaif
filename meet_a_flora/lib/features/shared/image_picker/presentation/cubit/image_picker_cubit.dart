import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/use_cases/image_picker_use_case.dart';
import 'package:meet_a_flora/features/shared/image_picker/presentation/cubit/image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  final ImagePickerUseCase _imagePickerUseCase;
  
  ImagePickerCubit(this._imagePickerUseCase) : super(ImagePickerInitialState());

  Future<void> pickImage(ImageSource source) async {
    final result = await _imagePickerUseCase.pickImage(source);
    result.when(
      (success) {
        emit(ImagePickerSuccessState(success.image));
      },
      (whenError) {
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
