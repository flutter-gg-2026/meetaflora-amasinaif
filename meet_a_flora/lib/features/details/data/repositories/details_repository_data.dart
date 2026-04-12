
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/details/data/models/details_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/details/domain/entities/details_entity.dart';

import 'package:meet_a_flora/features/details/data/datasources/details_remote_data_source.dart';
import 'package:meet_a_flora/features/details/domain/repositories/details_repository_domain.dart';

@LazySingleton(as: DetailsRepositoryDomain)
class DetailsRepositoryData implements DetailsRepositoryDomain{
  final BaseDetailsRemoteDataSource remoteDataSource;


  DetailsRepositoryData(this.remoteDataSource);

@override
Future<Result<DetailsEntity, Failure>> analyzePlant(File image) async {
  try {
    final response = await remoteDataSource.analyzePlant(image);
    return Success(response.toEntity());
  } catch (error) {
    return Error(FailureExceptions.getException(error));
  }
}
}
