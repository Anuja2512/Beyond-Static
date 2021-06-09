import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PurpleCard extends StatefulWidget {
  @override
  _PurpleCardState createState() => _PurpleCardState();
}

class _PurpleCardState extends State<PurpleCard> {
  Future<String> getMessages() async {
    var totalMessages = await MessageLastDay().gethrsMessagesCount();
    return totalMessages.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            spreadRadius: 3.0,
            blurRadius: 6.0,
            color: Color(0x7D00B5),
          ),
        ],
        color: Color(0xFF7D00B5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: FutureBuilder(
                  future: getMessages(),
                  builder: (context, snapshot) {
                    var msgs = snapshot.data;

                    return Text(
                      '$msgs',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
              SvgPicture.asset(
                'images/allMessages.svg',
                color: Colors.white,
                height: 35.0,
                width: 35.0,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Messages in',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'the last 24 hours',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
