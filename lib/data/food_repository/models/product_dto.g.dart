// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) => ProductDTO(
      id: json[r'$id'] as String,
      name: json['name'] as String,
      expiration: json['expiration'] as int,
      amount: (json['amount'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProductDTOToJson(ProductDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'expiration': instance.expiration,
      'amount': instance.amount,
      'unit': instance.unit,
      'image': instance.image,
    };
