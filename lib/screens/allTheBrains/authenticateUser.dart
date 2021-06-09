import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

final storage = FlutterSecureStorage();

const SERVER_IP = 'https://beyond-static.herokuapp.com/api/tokencheck';

class Authenticate {
  Future<bool> get authenticateUser async {
    try {
      var jwt = await storage.read(key: "jwt");

      var res = await http.post(Uri.parse(SERVER_IP), body: {
        "token": jwt,
      });
      var check = json.decode(res.body);
      if (check['status'] == false) {
        return false;
      } else
        return true;
    } catch (e) {
      return false;
    }
  }
}
