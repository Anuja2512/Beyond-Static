import 'dart:collection';
import 'package:beyond_static_app/screens/allTheBrains/projectBrain.dart';
import 'package:beyond_static_app/screens/projectData.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final int id;
  ReusableCard(
      {required this.colour, required this.cardChild, required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        width: MediaQuery.of(context).size.width,
        child: cardChild,
        padding: EdgeInsets.all(13.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset.zero,
              spreadRadius: 3.0,
              blurRadius: 6.0,
              color: Color(0x272D3B33)),
        ], color: colour, borderRadius: BorderRadius.circular(20.0)),
      ),
      onTap: () {
        // Navigator.pushNamed(context, '/project_data');
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx)=>ProjectData(id: id,),),
        );
      },
    );
  }
}
