import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api';
final storage = FlutterSecureStorage();

class MessageLastDay {
  Future<int> gethrsMessagesCount() async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String url = "$SERVER_IP/lastdaymessagescount/$username";

    var res = await http.get(Uri.parse(url), headers: {
      "Authorization": "$token",
    });
    var projects = json.decode(res.body);
    return projects['count'];
  }

  Future<String> getAllMessages(int id) async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String id2 = id.toString();
    String url = "$SERVER_IP/projectobjects2/$id2/$username";

    var res = await http.get(Uri.parse(url), headers: {
      "Authorization": "$token",
    });
    return (res.body);
  }
}
