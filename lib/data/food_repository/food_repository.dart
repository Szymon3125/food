import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:intl/intl.dart';

class HddStorage {
  HddStorage() {
    _client = Client();
    _client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject(projectId)
        .setSelfSigned(status: true);
    _account = Account(_client);
  }

  late Client _client;
  late Account _account;
  Session? _session;

  void _setSession(Session? session) {
    _session = session;
    isAuthenticated.value = _session != null;
  }

  final isAuthenticated = ValueNotifier<bool>(false);

  final projectId = '6481cb0056e9a582dfca';
  final foodDatabaseId = '6486d4687e96e1015aeb';
  final productsCollectionId = '6486d46f84fcfbea1c20';
  final imagesBucketId = '6486d5e79e99f5f3d71d';

  Future<void> registerWithEmail(String email, String password) async {
    if (isAuthenticated.value) {
      return;
    }

    await _account.create(
      userId: ID.unique(),
      email: email,
      password: password,
    );
  }

  Future<void> loginWithEmail(String email, String password) async {
    if (isAuthenticated.value) {
      return;
    }

    _setSession(await _account.createEmailSession(
      email: email,
      password: password,
    ));
    isAuthenticated.value = true;
  }

  Future<void> loginWithGoogle() async {
    if (isAuthenticated.value) {
      return;
    }

    await _account.createOAuth2Session(
      provider: 'google',
    );
    isAuthenticated.value = true;
  }

  Future<void> logout() async {
    if (!isAuthenticated.value) {
      return;
    }

    await _account.deleteSessions();
    _setSession(null);
    isAuthenticated.value = false;
  }

  Future<List<ProductDTO>> getProductList() async {
    Databases databases = Databases(_client);

    final result = await databases.listDocuments(
      databaseId: foodDatabaseId,
      collectionId: productsCollectionId,
    );

    return result.documents.map((e) => ProductDTO.fromJson(e.data)).toList();
  }

  Future<void> addProduct(ProductDTO product, String? imagePath) async {
    final databases = Databases(_client);
    final storage = Storage(_client);

    final file = imagePath != null
        ? await storage.createFile(
            bucketId: imagesBucketId,
            fileId: ID.unique(),
            file: InputFile.fromPath(
                path: imagePath,
                filename:
                    '${DateFormat('y_MM_dd_HH_mm_ss').format(DateTime.now())}_${product.name}.${imagePath.split('.').last}'),
          )
        : null;

    await databases.createDocument(
      databaseId: foodDatabaseId,
      collectionId: productsCollectionId,
      documentId: ID.unique(),
      data: ProductDTO(
        id: '',
        name: product.name,
        expiration: product.expiration,
        amount: product.amount,
        unit: product.unit,
        image: file != null
            ? 'https://cloud.appwrite.io/v1/storage/buckets/$imagesBucketId/files/${file.$id}/view?project=$projectId'
            : null,
      ).toJson(),
    );
  }

  Future<void> deleteProduct(String id) async {
    Databases databases = Databases(_client);

    await databases.deleteDocument(
      databaseId: foodDatabaseId,
      collectionId: productsCollectionId,
      documentId: id,
    );
  }
}
