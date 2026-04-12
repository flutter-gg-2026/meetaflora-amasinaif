import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/discovery/domain/use_cases/discovery_use_case.dart';
import 'package:meet_a_flora/features/discovery/presentation/cubit/discovery_state.dart';
import 'package:meet_a_flora/features/shared/image_picker/domain/use_cases/image_picker_use_case.dart';

@injectable
class DiscoveryCubit extends Cubit<DiscoveryState> {
  final DiscoveryUseCase _discoveryUseCase;
  final ImagePickerUseCase _imagePickerUseCase;

  File? selectedImage;

  DiscoveryCubit(this._discoveryUseCase, this._imagePickerUseCase)
    : super(DiscoveryInitialState());

  Future<void> pickImage(ImageSource source) async {
    final result = await _imagePickerUseCase.pickImage(source);

    result.when(
      (success) {
        selectedImage = success.image;
        emit(DiscoveryImageSelectedState(success.image));
      },
      (error) {
        emit(DiscoveryErrorState(message: error.message));
      },
    );
  }

  Future<void> analyzeImage() async {
    if (selectedImage == null) {
      emit(DiscoveryErrorState(message: "No Image Selected"));
      return;
    }

    emit(DiscoveryInitialState());

    final result = await _discoveryUseCase.getDiscovery(selectedImage!);

    result.when(
      (success) {
      emit(DiscoverySuccessState(success.firstName));
      },
      (error) {
        emit(DiscoveryErrorState(message: error.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
