import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

class Logout {
  void userPressedLogout() async {
    try {
      await storage.delete(key: 'jwt');
      await storage.delete(key: "username");
    } catch (e) {}
  }
}
