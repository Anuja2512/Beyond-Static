import 'dart:collection';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api';
final storage = FlutterSecureStorage();

class MessageGet {
  Future<int> getMessagesCount() async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String url = "$SERVER_IP/allmessagescount/$username";

    var res = await http.get(Uri.parse(url), headers: {
      "Authorization": "$token",
    });
    var projects = json.decode(res.body);
    return projects['totalMessageCount'];
  }
}