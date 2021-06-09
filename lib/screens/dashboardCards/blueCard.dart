import 'package:beyond_static_app/screens/allTheBrains/getAllTimeMessages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlueCard extends StatefulWidget {
  @override
  _BlueCardState createState() => _BlueCardState();
}

class _BlueCardState extends State<BlueCard> {
  Future<String> getMessages() async {
    var totalMessages = await MessageGet().getMessagesCount();
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
              color: Color(0x272D3B33))
        ],
        color: Color(0xFF2D62ED),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: FutureBuilder(
                  future: getMessages(),
                  builder: (context, snapshot){
                    var msgs = snapshot.data;

                    return  Text(
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
                'images/all.svg',
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
                'All-Time',
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
                'Messages',
                // margin: EdgeInsets.only(left: 0.0,top: 0.0, bottom: 0.0, right:0.0),
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
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
