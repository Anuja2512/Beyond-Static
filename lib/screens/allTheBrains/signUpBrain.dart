import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api/register';
final storage = FlutterSecureStorage();

class SignUpBrain {
  Future<int?> signUpAttempt(String username, String fName, String lName,
      String email, String password) async {
    var res = await http.post(Uri.parse(SERVER_IP), body: {
      "username": username,
      "password": password,
      "fname": fName,
      "lname": lName,
      "email": email,
    });

    var body = json.decode(res.body);
    if (body['status'] == '200 OK')
      return 201;
    else if (body['status'] == '403 User already exists') return 409;
    return null;
  }
}
