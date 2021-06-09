import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api';
final storage = FlutterSecureStorage();


class SelectedProject {

  Future<List> getData(int id) async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String url = "$SERVER_IP/project/$id";

    var res = await http.get(Uri.parse(url), headers: {
      "Authorization": "$token",
    });
    var projects = json.decode(res.body);

    return projects;
  }
}