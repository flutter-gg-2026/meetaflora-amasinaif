// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiscoveryModel _$DiscoveryModelFromJson(Map<String, dynamic> json) =>
    _DiscoveryModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$DiscoveryModelToJson(_DiscoveryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
