// import 'dart:collection';
// import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
// import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'dart:collection';

import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'package:beyond_static_app/screens/profileCards/justTest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:json_table/json_table.dart';

class ScrollCard extends StatefulWidget {
  final int id;
  const ScrollCard({required this.id});
  @override
  _ScrollCardState createState() => _ScrollCardState(id);
}

class _ScrollCardState extends State<ScrollCard> {
  //Decode your json string
  final int id;
  _ScrollCardState(this.id);


  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white, //field container
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          new BoxShadow(
            color: Color(0xFFD6D6D6),
            blurRadius: 10.0,
            offset: Offset(
              0.0,
              10.0,
            ),
          ),
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
              // CircleAvatar(
              //   backgroundColor: Colors.white,
              //   radius: 19,
              //   child: SvgPicture.asset(
              //     'images/delete_data.svg',
              //     color: Colors.black,
              //   ),
              // ),
            ],
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: FutureBuilder<Widget>(
                    future: ScrollTable().getTable(id),
                    builder: (context, snapshot) {
                      if(!snapshot.hasData){
                        return CircularProgressIndicator();
                      }
                      return snapshot.data!;

                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
