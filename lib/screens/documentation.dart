import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Documentation extends StatefulWidget {
  @override
  _DocumentationState createState() => _DocumentationState();
}

class _DocumentationState extends State<Documentation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 14.0),
            child: Column(children: <Widget>[
              InkWell(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFFD6D6D6),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 6.0),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                              child: Text(
                            'Welcome To Beyond Static',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Expanded(
                              child: Text(
                            "What's New In Beyond Static",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('21 new charts',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('15 new reports',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('45 new messages',style: TextStyle(fontSize: 15),))
                          ],
                        )
                      ],
                    )),
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFFD6D6D6),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 6.0),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                              child: Text(
                            'How to Use Beyond Static',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Expanded(
                              child: Text(
                            "What's New In Beyond Static",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('21 new charts',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('15 new reports',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('45 new messages',style: TextStyle(fontSize: 15),))
                          ],
                        )
                      ],
                    )),
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFFD6D6D6),
                            blurRadius: 6.0,
                            offset: Offset(0.0, 6.0),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                              child: Text(
                            'How You Can Help Us ?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Expanded(
                              child: Text(
                            "What's New In Beyond Static",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                        ]),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('21 new charts',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('15 new reports',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.pink,
                              size: 12,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text('45 new messages',style: TextStyle(fontSize: 15),))
                          ],
                        )
                      ],
                    )),
                onTap: () {},
              )
            ])),
      )),
    );
  }
}
