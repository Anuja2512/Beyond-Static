import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String title;
  // final String description;

  final String state;

  CardContent({required this.title, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              state,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text(
            //   description,
            //   style: TextStyle(
            //     fontSize: 15.0,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 17.0,
              backgroundColor: Color(0x55FFFFFF),
              child: Icon(
                Icons.north_east_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
