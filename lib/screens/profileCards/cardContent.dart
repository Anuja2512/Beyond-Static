import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CardContent extends StatelessWidget {
  final String title;
  // final String description;

  final String state;
  final String desc;

  CardContent({required this.title, required this.state, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(right: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ReadMoreText(
                  '$desc',
                  textAlign: TextAlign.justify,
                  trimLines: 2,
                  colorClickableText: Color(0xFF2D62ED),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(


                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                    color: Color(0xFF2D62ED),

                  ),
                ),
              ),
            ],
          ),
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
