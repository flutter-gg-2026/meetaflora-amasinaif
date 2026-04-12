import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/details/domain/entities/details_entity.dart';
import 'package:meet_a_flora/features/details/domain/repositories/details_repository_domain.dart';


@lazySingleton
class DetailsUseCase {
  final DetailsRepositoryDomain _repositoryData;

  DetailsUseCase(this._repositoryData);

     Future<Result<DetailsEntity, Failure>> analyzePlant(File image) {
    return _repositoryData.analyzePlant(image);
  }
}
