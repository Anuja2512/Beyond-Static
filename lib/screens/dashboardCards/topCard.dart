import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  @override
  _TopCardState createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset.zero,
              spreadRadius: 3.0,
              blurRadius: 6.0,
              color: Color(0x272D3B33))
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
          SizedBox(
            height: 9.0,
          ),
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
          SizedBox(
            height: 9.0,
          ),
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
          SizedBox(
            height: 9.0,
          ),
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
          SizedBox(
            height: 9.0,
          ),
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
          Row(
            children: [
              Text('Hello world'),
              SizedBox(
                width: 10.0,
              ),
              Text('Goodbye world'),
            ],
          ),
        ],
      ),
    );
  }
}
