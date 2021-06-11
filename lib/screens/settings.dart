import 'dart:collection';

import 'package:beyond_static_app/screens/allTheBrains/getAllTimeMessages.dart';
import 'package:beyond_static_app/screens/allTheBrains/getProfileBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/logout.dart';
import 'package:beyond_static_app/screens/allTheBrains/settingsBrain.dart';
import 'package:beyond_static_app/screens/profileCards/reusableCard.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'allTheBrains/projectCards.dart';
import 'login.dart';

const lableStyle = TextStyle(
  color: Color(0xFF2D62ED),
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
);

final storage = FlutterSecureStorage();

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


  Future<String> getUsername() async {
    return (await storage.read(key: 'username'))!;
  }

  Future<String> getFirstName() async {
    var profile = await ProfileGet().getProfile();
    LinkedHashMap project = profile;
    return project['first_name'];

  }

  Future<String> getMessages() async {
    var totalMessages = await MessageGet().getMessagesCount();
    return totalMessages.toString();
  }

  Future<String> giveLength() async{
    var numProjects = await CardCreator().getLength();
    return numProjects.toString();
  }

  Future<String> getLastName() async {
    var profile = await ProfileGet().getProfile();
    LinkedHashMap project = profile;
    return project['last_name'];
  }

  Future<String> getEmail() async {
    var profile = await ProfileGet().getProfile();
    LinkedHashMap project = profile;
    return project['email'];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(36.0, 20.0, 5.0, 3.0),
              child: Text(
                'Beyond Static',
                style: TextStyle(
                  color: Color(0xFF2D62ED),
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(36.0, 0.0, 5.0, 3.0),
              child: Text(
                'Let the Journey Begin',
                style: lableStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.all(13.0),
              padding: EdgeInsets.fromLTRB(24.0, 30.0, 17.0, 17.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD6D6D6),
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30.0),
                  right: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: lableStyle,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 11.0, 17.0, 11.0),
                      child:Container(
                        child: FutureBuilder(
                          future: getUsername(),
                          builder: (context, snapshot){
                            var username = snapshot.data;
                            print(snapshot.data);
                            return   RichText(
                              text: TextSpan(
                                text: '$username',
                                style: TextStyle(
                                  color: Color(0xFF272D3B),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            );


                          },
                        ),
                      ),
                  ),
                  Text(
                    'First Name',
                    style: lableStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 11.0, 17.0, 11.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width /1.4,
                          child: FutureBuilder(
                            future: getFirstName(),
                            builder: (context, snapshot){
                              var firstname = snapshot.data;
                              print(snapshot.data);
                              return   RichText(
                                text: TextSpan(
                                  text: '$firstname',
                                  style: TextStyle(
                                    color: Color(0xFF272D3B),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              );


                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Last Name',
                    style: lableStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 11.0, 17.0, 11.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width /1.4,
                          child: Expanded(
                            child: FutureBuilder(
                              future: getLastName(),
                              builder: (context, snapshot){
                                var lastname = snapshot.data;
                                print(snapshot.data);
                                return   RichText(
                                  text: TextSpan(
                                    text: '$lastname',
                                    style: TextStyle(
                                      color: Color(0xFF272D3B),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                );


                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Email ID',
                    style: lableStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 11.0, 17.0, 11.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width /1.4,
                          child: Expanded(
                            child: FutureBuilder(
                              future: getEmail(),
                              builder: (context, snapshot){
                                var email = snapshot.data;
                                print(snapshot.data);
                                return  RichText(
                                  text: TextSpan(
                                    text: '$email',
                                    style: TextStyle(
                                      color: Color(0xFF272D3B),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                );


                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 110.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF2D62ED),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFD6D6D6),
                              blurRadius: 6.0,
                              offset: Offset(0.0, 6.0),
                            ),
                          ],
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30.0),
                            right: Radius.circular(30.0),
                          ),
                        ),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/settings_brain');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              CircleAvatar(
                                radius: 17.0,
                                backgroundColor: Color(0x55FFFFFF),
                                child: SvgPicture.asset(
                                  'images/edit_data.svg',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset.zero,
                              spreadRadius: 3.0,
                              blurRadius: 6.0,
                              color: Color(0x272D3B33)),
                        ],
                        color: Color(0xFF7D00B5),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: FutureBuilder(
                                future: giveLength(),
                                builder: (context, snapshot){
                                  var lnth = snapshot.data;
                                  print(snapshot.data);
                                  return  Text(
                                    '$lnth',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 40.0,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'images/folder.svg',
                                  color: Colors.white,
                                  height: 33.0,
                                  width: 30.0,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        RichText(
                        text: TextSpan(
                        text: 'Number of Projects',
                          style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                  ),

                          ],
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset.zero,
                              spreadRadius: 3.0,
                              blurRadius: 6.0,
                              color: Color(0x272D3B33)),
                        ],
                        color: Color(0xFFFF007C),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: FutureBuilder(
                                future: getMessages(),
                                builder: (context, snapshot){
                                  var msgs = snapshot.data;
                                  print(snapshot.data);
                                  return  Text(
                                    '$msgs',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 40.0,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'images/all.svg',
                                  color: Colors.white,
                                  height: 33.0,
                                  width: 30.0,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'All-Time Messages',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 22.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: 135.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF2D62ED),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFD6D6D6),
                          blurRadius: 6.0,
                          offset: Offset(0.0, 6.0),
                        ),
                      ],
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(30.0),
                        right: Radius.circular(30.0),
                      ),
                    ),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Logout().userPressedLogout();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          CircleAvatar(
                            radius: 17.0,
                            backgroundColor: Color(0x55FFFFFF),
                            child: SvgPicture.asset(
                              'images/save.svg',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


