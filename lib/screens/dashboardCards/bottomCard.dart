import 'package:flutter/material.dart';

class BottomCard extends StatefulWidget {
  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset.zero,
            spreadRadius: 3.0,
            blurRadius: 6.0,
            color: Color(0x272D3B33))
      ], color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
