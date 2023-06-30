import 'package:json_annotation/json_annotation.dart';
part 'product_dto.g.dart';

@JsonSerializable()
class ProductDTO {
  ProductDTO({
    required this.id,
    required this.name,
    required this.expiration,
    required this.amount,
    required this.unit,
    required this.image,
  });

  @JsonKey(includeToJson: false, name: '\$id')
  String id;
  String name;
  int expiration;
  double? amount;
  String? unit;
  String? image;

  factory ProductDTO.fromJson(Map<String, dynamic> data) =>
      _$ProductDTOFromJson(data);

  Map<String, dynamic> toJson() => _$ProductDTOToJson(this);
}
