import 'package:flutter/material.dart';

import 'dashboardCards/userCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              UserCard(),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey.shade100,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset.zero,
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          color: Color(0x272D3B33)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
