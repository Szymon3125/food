import 'package:json_annotation/json_annotation.dart';
part 'local_product_dto.g.dart';

@JsonSerializable()
class LocalProductDTO {
  LocalProductDTO({
    required this.id,
    required this.name,
    required this.expiration,
    required this.amount,
    required this.unit,
  });

  String id;
  String name;
  int expiration;
  double? amount;
  String? unit;

  factory LocalProductDTO.fromJson(Map<String, dynamic> data) =>
      _$LocalProductDTOFromJson(data);

  Map<String, dynamic> toJson() => _$LocalProductDTOToJson(this);
}
