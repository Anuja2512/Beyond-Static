import 'dart:collection';

import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollCard extends StatefulWidget {
  final int id;
  const ScrollCard({required this.id});
  @override
  _ScrollCardState createState() => _ScrollCardState(id);
}

class _ScrollCardState extends State<ScrollCard> {

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
    getField1();
    getField2();
    getField3();
    getField4();
    getField5();
    super.initState();
  }

  final int id;
  _ScrollCardState(this.id);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height / 1.5,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Form Data',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 19,
                child: SvgPicture.asset(
                  'images/delete_data.svg',
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Expanded(
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: [
                    DataColumn(
                        label:  Text('Sr.No.',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: FutureBuilder(
                          future: getField1(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                              {
                                return Text(
                                    '$msgs',
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold)
                                );
                              }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),),
                    DataColumn(
                        label:  FutureBuilder(
                          future: getField2(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold)
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),),
                    DataColumn(
                        label:  FutureBuilder(
                          future: getField3(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold)
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),),
                    DataColumn(
                        label:  FutureBuilder(
                          future: getField4(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold)
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),),
                    DataColumn(
                        label: FutureBuilder(
                          future: getField5(),
                          builder: (context, snapshot) {
                            var msgs = snapshot.data;
                            if(msgs != '')
                            {
                              return Text(
                                  '$msgs',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold)
                              );
                            }
                            else{
                              return Text('--',style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold));
                            }

                          },
                        ),),
                    DataColumn(
                        label: Text(' ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                  rows: AiseHi().fillRows(id),
                  // [
                  //   DataRow(cells: [
                  //     DataCell(Text('15')),
                  //     DataCell(
                  //         Text('Scientist')
                  //     ),
                  //     DataCell(Text('Scientist')),
                  //     DataCell(Text('Actor')),
                  //     DataCell(Text('Actor')),
                  //     DataCell(Text('Actor')),
                  //     DataCell(
                  //       Checkbox(value: true, onChanged: null),
                  //     ),
                  //   ]),
                  // ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


class AiseHi{

  List<DataRow> allTheRows = [];

  List<DataRow> fillRows(int id){
    var temp = MessageLastDay().getAllMessages(id);
    return allTheRows;
  }
}