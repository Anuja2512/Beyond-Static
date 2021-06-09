import 'dart:collection';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const SERVER_IP = 'https://beyond-static.herokuapp.com/api';
final storage = FlutterSecureStorage();

class UpdateProjectBrain {
  Future<int?> projectUpdate(int id, String pName, String dName,
      String updateUrl,String f1, String f2, String f3, String f4, String f5) async {
    String? token = await storage.read(key: "jwt");
    String? username = await storage.read(key: "username");
    String url = "$SERVER_IP/project/$id/$username";
    var body2 = json.encode({
      "ProjectName": pName,
      "Description": dName,
      "EndpointURL": updateUrl,
      "Field1Name": f1,
      "Field2Name": f2,
      "Field3Name": f3,
      "Field4Name": f4,
      "Field5Name": f5,
      "ProjectStatus": true,
    });
    var res = await http.put(Uri.parse(url), headers: {
      "Authorization": "$token",
      "Content-Type": "application/json"

    },
        body: body2);

    var body = json.decode(res.body);


      return 201;

  }
}
