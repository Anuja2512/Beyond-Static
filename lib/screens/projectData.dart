import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'profileCards/scrollCard.dart';

class ProjectData extends StatefulWidget {
  final int id;

  const ProjectData({required this.id});

  @override
  _ProjectDataState createState() => _ProjectDataState(id);
}

class _ProjectDataState extends State<ProjectData> {

  final int id;
  _ProjectDataState(this.id)

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
                  //Projectname container ka design
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'PROJECT NAME',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
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
                            onTap: (){
                              Navigator.pushNamed(context, '/dashboard');
                              Navigator.pushNamed(context, '/nav');
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          //entries vala
                          Text(
                            '13 new entries',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: SvgPicture.asset(
                              'images/stop_data.svg',
                              color: Color(0xFF272D3B),
                            ),
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
                                  Navigator.pushNamed(context, '/project_data');
                                  print('ho raha hai');
                                }
                           ),
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
                            onTap: (){
                              Navigator.pushNamed(context, '/delete_brain');
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
                            onTap: (){
                              Navigator.pushNamed(context, '/editproject_brain');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  //description container
                  margin: EdgeInsets.all(12),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  height: 140,
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
                            fontSize: 18.0,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 4,
                      ),
                      Row(children: [
                        Expanded(
                          child: Text(
                            //description ka element
                            'He found a leprechaun in his walnut shell.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ]),

                    ],
                  ),
                ),
                ScrollCard(),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                  height: 190,
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
                        Text('Field 1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ))
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
                        Text('Field 2',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ))
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
                        Text('Field 3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ))
                      ]),
                      SizedBox(
                        height: 0,
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
                        Text('Field 4',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )),
                      ]),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                  height: 120,
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
                        Text('www.url.com',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 18.0,
                            backgroundColor: Color(0xFF2D62ED),
                            child: SvgPicture.asset(
                              'images/edit_data.svg',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
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
