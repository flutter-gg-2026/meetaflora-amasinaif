import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/services/gemini_service.dart';
import 'package:meet_a_flora/features/details/data/models/details_model.dart';


abstract class BaseDetailsRemoteDataSource {
  Future<DetailsModel> analyzePlant(File image);
}


@LazySingleton(as: BaseDetailsRemoteDataSource)
class DetailsRemoteDataSource implements BaseDetailsRemoteDataSource {
  final GeminiService geminiService;

   DetailsRemoteDataSource( this.geminiService);

 @override
  Future<DetailsModel> analyzePlant(File image) async {
    final result = await geminiService.analyzePlant(image);

    return DetailsModel(result: result);
  }
}
