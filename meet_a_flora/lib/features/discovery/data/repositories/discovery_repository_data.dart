
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/discovery/domain/entities/discovery_entity.dart';

import 'package:meet_a_flora/features/discovery/data/datasources/discovery_remote_data_source.dart';
import 'package:meet_a_flora/features/discovery/data/models/discovery_model.dart';
import 'package:meet_a_flora/features/discovery/domain/repositories/discovery_repository_domain.dart';

@LazySingleton(as: DiscoveryRepositoryDomain)
class DiscoveryRepositoryData implements DiscoveryRepositoryDomain{
  final BaseDiscoveryRemoteDataSource remoteDataSource;


  DiscoveryRepositoryData(this.remoteDataSource);

@override
  Future<Result<DiscoveryEntity, Failure>> getDiscovery() async {
    try {
      final response = await remoteDataSource.getDiscovery();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
