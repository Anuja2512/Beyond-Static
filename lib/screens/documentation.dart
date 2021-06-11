import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            'Your Contribution In Code',
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
                            "Beyond Static Is Completely Open Source And You Can Contribute To The Code!!!",
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
                            Expanded(child: Text('Django REST Framework - Backend',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('ReactJS - Web Framework',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Flutter - App Framework',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )),
                onTap: () {

                  launch("https://beyondstatic.netlify.app/contribute");
                },
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),

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
                            "Learn To Connect Your Static Page Form To A Backend",
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
                            Expanded(child: Text('Creating a Project',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Setting up the Form in Static Site',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Click here to know more!',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )),
                onTap: () {
                  launch("https://beyondstatic.netlify.app/docs");
                },
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),

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
                            'Know More About Us',
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
                            "Introduction To Our Team",
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
                            Expanded(child: Text('Devang Kamble - Full Stack Developer',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Alfhad Shah - Flutter Developer',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Aayush Chaudhary - 3D Generalist',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Anuja Jadhav - Flutter Developer',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Sanjay Ausare - Front-End Developer',style: TextStyle(fontSize: 15),))
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
                            Expanded(child: Text('Lalu Nair - Flutter Developer',style: TextStyle(fontSize: 15),))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )),
                onTap: () {
                  launch("https://beyondstatic.netlify.app/aboutus");
                },
              )
            ])),
      )),
    );
  }
}
