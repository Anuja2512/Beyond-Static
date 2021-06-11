import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

class UserCard extends StatefulWidget {
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {


  Future<String> getUsername() async {
    return (await storage.read(key: 'username'))!;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: FutureBuilder(
                  future: getUsername(),
                  builder: (context, snapshot){
                    var username = snapshot.data;

                    return  Text(
                      'Welcome back, $username!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    );
                  },
                ),
              ),

            ],
          ),

        ],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset.zero,
            spreadRadius: 3.0,
            blurRadius: 6.0,
            color: Color(0x272D3B33))
      ], color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
