import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/data/food_repository/models/local_product_dto.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:uuid/uuid.dart';

class LocalRepository {
  factory LocalRepository() =>
      _instance ??= LocalRepository._(const FlutterSecureStorage());

  LocalRepository._(this._storage);

  static LocalRepository? _instance;

  final FlutterSecureStorage _storage;

  static const _productsKey = 'products';

  Future<List<ProductDTO>> getProductList() async {
    String? text = await _storage.read(key: _productsKey);

    Iterable list = json.decode(text ?? '[]');
    return List<ProductDTO>.from(
      list
          .map(
            (model) => LocalProductDTO.fromJson(model),
          )
          .map(
            (e) => ProductDTO(
              id: e.id,
              name: e.name,
              expiration: e.expiration,
              amount: e.amount,
              unit: e.unit,
              image: null,
            ),
          ),
    );
  }

  Future<void> addProduct(ProductDTO product) async {
    final products = await getProductList();

    products.add(
      ProductDTO(
        id: const Uuid().v1(),
        name: product.name,
        expiration: product.expiration,
        amount: product.amount,
        unit: product.unit,
        image: '',
      ),
    );

    await _storage.write(
      key: _productsKey,
      value: json.encode(
        products
            .map(
              (e) => LocalProductDTO(
                id: e.id,
                name: e.name,
                expiration: e.expiration,
                amount: e.amount,
                unit: e.unit,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> deleteProduct(String id) async {
    final products = await getProductList();

    products.removeWhere((product) => product.id == id);

    await _storage.write(
      key: _productsKey,
      value: json.encode(
        products
            .map(
              (e) => LocalProductDTO(
                id: e.id,
                name: e.name,
                expiration: e.expiration,
                amount: e.amount,
                unit: e.unit,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> clear() async {
    _storage.deleteAll();
  }
}
