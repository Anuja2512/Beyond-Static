import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';



// ignore: must_be_immutable
class ScrollCard extends StatefulWidget {


  @override
  _ScrollCardState createState() => _ScrollCardState();
}

class _ScrollCardState extends State<ScrollCard> {



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height/1.5,
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
                child: Text('Form Data',style:TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w900,
                ),),
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
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[


              SingleChildScrollView(
                scrollDirection:Axis.vertical,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text(
                        'No.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Field 01',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Field 02',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Field 03',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Field 04',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Field 05',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        ' ',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                  ],
                  rows: [

                    DataRow(cells: [
                      DataCell(Text('1')), //Sr. No
                      DataCell(Text('Stephen')), //Field 01
                      DataCell(Text('Actor')),  //Field 02
                      DataCell(Text('Actor')),  //Field 03
                      DataCell(Text('Actor')),  //Field 04
                      DataCell(Text('Actor')),  //Field 05
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('15')),
                      DataCell(Text('Peter')),
                      DataCell(Text('Scientist')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('15')),
                      DataCell(Text('Peter')),
                      DataCell(Text('Scientist')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),


                    DataRow(cells: [
                      DataCell(Text('15')),
                      DataCell(Text('Peter')),
                      DataCell(Text('Scientist')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                      DataCell(Checkbox(value: true, onChanged: null),),
                    ]),
                  ],
                ),
              ),
            ]),
          ),
    ],
      ),
    );
  }
}
