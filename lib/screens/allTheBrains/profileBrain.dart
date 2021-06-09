import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api';
final storage = FlutterSecureStorage();

class ProfileBrain {
  Future<int?> profileUpdate(String fName, String lName,
      String email) async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String url = "$SERVER_IP/profile/$username";
    var res = await http.put(Uri.parse(url), headers: {
      "Authorization": "$token",

    },
        body: {
      "first_name": fName,
      "last_name": lName,
      "email": email,
    });

    var body = json.decode(res.body);

    if (body['status'] == '200 OK')
      return 201;
    else return 409;
  }
}
