import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/discovery/domain/entities/discovery_entity.dart';
import 'package:meet_a_flora/features/discovery/domain/repositories/discovery_repository_domain.dart';


@lazySingleton
class DiscoveryUseCase {
  final DiscoveryRepositoryDomain _repositoryData;

  DiscoveryUseCase(this._repositoryData);

   Future<Result<DiscoveryEntity, Failure>> getDiscovery(File file) async {
    return _repositoryData.getDiscovery();
  }
}
