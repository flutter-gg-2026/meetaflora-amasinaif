import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/details/domain/use_cases/details_use_case.dart';
import 'package:meet_a_flora/features/details/presentation/cubit/details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final DetailsUseCase _detailsUseCase;

  DetailsCubit(this._detailsUseCase) : super(DetailsInitialState());

  Future<void> getDetailsMethod(File image) async {
    final result = await _detailsUseCase.analyzePlant(image);
    result.when(
      (success) {
        emit(DetailsSuccessState(success.result));
      },
      (whenError) {
       emit(DetailsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }

  analyzeImage(File image) {}
}
