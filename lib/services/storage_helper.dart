import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageManager {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<String?> getAccessToken() async {
    return storage.read(key: 'token');
  }

  Future<String?> getUserId() async {
    return storage.read(key: 'id');
  }

  Future<void> setAccessToken(String accessToken) async {
    await storage.write(key: 'token', value: accessToken);
  }

  Future<void> deleteTokens() async {
    await storage.delete(key: 'token');
    await storage.delete(key: 'id');
    await storage.delete(key: 'name');
    await storage.delete(key: 'email');
    await storage.delete(key: 'password');
    await storage.delete(key: 'filial');
  }
}
