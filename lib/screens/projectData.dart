import 'dart:collection';

import 'package:beyond_static_app/screens/allTheBrains/activeBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/deleteBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/editprojectBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'package:beyond_static_app/screens/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profileCards/scrollCard.dart';

class ProjectData extends StatefulWidget {
  final int id;

  const ProjectData({required this.id});

  @override
  _ProjectDataState createState() => _ProjectDataState(id);
}

class _ProjectDataState extends State<ProjectData> {
  Future<String> getProjectName() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["ProjectName"];
  }
  Future<String> giveStatus() async {
    LinkedHashMap projects = await Active().statusInvert(id);
    return projects["status"];
  }
  Future<String> getDescription() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Description"];
  }
  Future<String> getEntriesNum() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["totalMessages"].toString();
  }
  Future<String> getURL() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["EndpointURL"];
  }
  Future<String> getField1() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Field1Name"];
  }
  Future<String> getField2() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Field2Name"];
  }
  Future<String> getField3() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Field3Name"];
  }
  Future<String> getField4() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Field4Name"];
  }
  Future<String> getField5() async {
    LinkedHashMap projects = await SelectedProject().getData(id);
    return projects["Field5Name"];
  }

  @override
  void initState() {
    // TODO: implement initState
    getProjectName();
    getEntriesNum();
    getDescription();
    getField1();
    getField2();
    getField3();
    getField4();
    getField5();
    getURL();
    super.initState();
  }

  final int id;
  _ProjectDataState(this.id);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF7D00B5),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFFD6D6D6),
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        //Project container ka nam
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: FutureBuilder(
                              future: getProjectName(),
                              builder: (context, snapshot) {
                                var msgs = snapshot.data;
                                if(msgs != '')
                                {
                                  return Text(
                                      '$msgs',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }
                                else{
                                  return Text('--',style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold));
                                }

                              },
                            ),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Color(0x55FFFFFF),
                              child: Icon(
                                Icons.west,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) => Nav(),
                              ),);

                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                          children: [
                            FutureBuilder(
                              future: getEntriesNum(),
                              builder: (context, snapshot) {
                                var msgs = snapshot.data;
                                if(msgs != '')
                                {
                                  return Text(
                                    '$msgs new entries',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  );
                                }
                                else{
                                  return Text('--',style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold));
                                }

                              },
                            ),
                          ],
                        ),
                        Row(

                          children: <Widget>[
                            //entries vala

                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: SvgPicture.asset(
                                  'images/stop_data.svg',
                                  color: Color(0xFF272D3B),
                                ),
                              ),
                              onTap: (){
                                Active().statusInvert(id);
                                Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Nav(),
                                ),);
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),

                            // ignore: deprecated_member_use
                            InkWell(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20, //icon refresh
                                  child: SvgPicture.asset(
                                    'images/reload.svg',
                                    color: Color(0xFF272D3B),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                    builder: (BuildContext context) => ProjectData(id: id),
                                  ),);
                                  print('ho raha hai');
                                }),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: SvgPicture.asset(
                                  'images/delete_data.svg',
                                  color: Color(0xFF272D3B),
                                ),
                              ),
                              onTap: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Are You Sure?'),
                                    content: const Text('This action cannot be reverted. Click Yes to delete the project.'),
                                    actions: <Widget>[
                                      TextButton(
                                          child: Text('No'),
                                          onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                            builder: (BuildContext context) => ProjectData(id: id),
                                          ),);}
                                      ),
                                      TextButton(
                                          child: Text('Yes'),
                                          onPressed: () {
                                            Delete().projectDelete(id);
                                            Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                              builder: (BuildContext context) => Nav(),
                                            ),);
                                          }
                                      ),
                                    ],
                                  ),
                                );



                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20, //description ka edit icon
                                child: SvgPicture.asset(
                                  'images/edit_data.svg',
                                  color: Color(0xFF272D3B),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (ctx) => EditProject(
                                      id: id,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],),



                    ],
                  ),
                ),
                Container(
                  //description container
                  margin: EdgeInsets.all(12),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 20, 30, 20),

                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xFFD6D6D6),
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0),
                        ),
                      ]),
                  child: Column(
                    children: <Widget>[
                      Row(children: [
                        Text(
                          'Description', //description ka element
                          style: TextStyle(
                            color: Color(0xFF2D62ED),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 4,
                      ),
                      Row(children: [
                        Expanded(
                          child:
                          FutureBuilder(
                            future: getDescription(),
                            builder: (context, snapshot) {
                              var msgs = snapshot.data;
                              if(msgs != '')
                              {
                                return Text(
                                  '$msgs',

                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                  ),
                                );
                              }
                              else{
                                return Text('--',style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold));
                              }

                            },
                          ),

                        ),
                      ]),
                    ],
                  ),
                ),
                ScrollCard(id: id),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white, //field container
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                          color: Color(0xFFD6D6D6),
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0)),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          "Fields Name",
                          style: TextStyle(
                            color: Color(0xFF2D62ED),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 8,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FutureBuilder(
                          future: getField1(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FutureBuilder(
                          future: getField2(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FutureBuilder(
                          future: getField3(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FutureBuilder(
                          future: getField4(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FutureBuilder(
                          future: getField5(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  )
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),
                      ]),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 10),

                  width: double.infinity,
                  decoration: BoxDecoration(
                    //website link container
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      new BoxShadow(
                          color: Color(0xFFD6D6D6),
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0)),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Website Link',
                        style: TextStyle(
                          color: Color(0xFF2D62ED),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(children: [
                        Icon(
                          Icons.circle,
                          color: Color(0xFF2D62ED),
                          size: 9.5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: FutureBuilder(
                            future: getURL(),
                            builder: (context, snapshot) {
                              var msgs = snapshot.data;
                              if(msgs != '')
                              {
                                return RichText(
                                  text: TextSpan(
                                    text: '$msgs',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launch("$msgs");
                                      },
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),
                                  ),
                                );


                              }
                              else{
                                return Text('--',style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold));
                              }
                            },
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
