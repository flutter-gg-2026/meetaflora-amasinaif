import 'package:meet_a_flora/features/discovery/domain/entities/discovery_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'discovery_model.freezed.dart';
part 'discovery_model.g.dart';

@freezed
abstract class DiscoveryModel with _$DiscoveryModel {
  const factory DiscoveryModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _DiscoveryModel;

  factory DiscoveryModel.fromJson(Map<String, Object?> json) => _$DiscoveryModelFromJson(json);
}



extension DiscoveryModelMapper on DiscoveryModel {
  DiscoveryEntity toEntity() {
    return DiscoveryEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
