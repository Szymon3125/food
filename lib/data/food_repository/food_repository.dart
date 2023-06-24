import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:food/data/food_repository/models/product_dto.dart';

class FoodRepository {
  FoodRepository() {
    _client = Client();
    _client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('6481cb0056e9a582dfca')
        .setSelfSigned(status: true);
    _account = Account(_client);
  }

  late Client _client;
  late Account _account;
  Session? _session;

  bool get isAuthenticated => _session != null;

  final foodDatabaseId = '6486d4687e96e1015aeb';
  final productscollectionId = '6486d46f84fcfbea1c20';

  Future<void> registerWithEmail(String email, String password) async {
    if (!isAuthenticated) {
      await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
      );
    }
  }

  Future<void> loginWithEmail(String email, String password) async {
    if (!isAuthenticated) {
      _session = await _account.createEmailSession(
        email: email,
        password: password,
      );
    }
  }

  Future<void> loginWithGoogle() async {
    if (!isAuthenticated) {
      _session = await _account.createOAuth2Session(
        provider: 'google',
      );
    }
  }

  Future<void> logout() async {
    if (isAuthenticated) {
      await _account.deleteSession(
        sessionId: _session!.$id,
      );
    }
  }

  Future<List<ProductDTO>> getProductList() async {
    Databases databases = Databases(_client);

    final result = await databases.listDocuments(
      databaseId: foodDatabaseId,
      collectionId: productscollectionId,
    );

    return result.documents.map((e) => ProductDTO.fromJson(e.data)).toList();
  }

  // Future<ProductDTO> getProduct(String id) async {}

  // Future<void> addProduct() async {}

  // Future<void> deleteProduct(String id) async {}
}
