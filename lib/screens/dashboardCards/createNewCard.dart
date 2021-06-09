import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewCard extends StatefulWidget {
  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Create A New Project',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D62ED),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Let the Journey Begin',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xFF2D62ED),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 17.0,
                child: SvgPicture.asset(
                  'images/More Button.svg',
                ),
              ),
            ],
          ),
        ],
      ),
      //margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset.zero,
              spreadRadius: 3.0,
              blurRadius: 6.0,
              color: Color(0x272D3B33)),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
