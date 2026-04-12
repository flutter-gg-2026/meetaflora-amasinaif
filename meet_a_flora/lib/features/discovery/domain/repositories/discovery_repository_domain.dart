import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/discovery/domain/entities/discovery_entity.dart';

abstract class DiscoveryRepositoryDomain {
    Future<Result<DiscoveryEntity, Failure>> getDiscovery();
}
