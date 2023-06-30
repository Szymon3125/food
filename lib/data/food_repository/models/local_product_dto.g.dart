// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalProductDTO _$LocalProductDTOFromJson(Map<String, dynamic> json) =>
    LocalProductDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      expiration: json['expiration'] as int,
      amount: (json['amount'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$LocalProductDTOToJson(LocalProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'expiration': instance.expiration,
      'amount': instance.amount,
      'unit': instance.unit,
    };
