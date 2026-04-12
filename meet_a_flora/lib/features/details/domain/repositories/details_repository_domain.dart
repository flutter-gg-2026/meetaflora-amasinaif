import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/details/domain/entities/details_entity.dart';

abstract class DetailsRepositoryDomain {
  Future<Result<DetailsEntity, Failure>> analyzePlant(File image);
}
