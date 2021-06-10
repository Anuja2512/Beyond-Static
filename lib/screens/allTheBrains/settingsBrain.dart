import 'package:beyond_static_app/dialogBox.dart';
import 'package:beyond_static_app/screens/allTheBrains/profileBrain.dart';
import 'package:beyond_static_app/screens/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const lableStyle = TextStyle(
  color: Color(0xFF2D62ED),
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
);

class SettingBrain extends StatefulWidget {
  @override
  _SettingBrainState createState() => _SettingBrainState();
}

class _SettingBrainState extends State<SettingBrain> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(36.0, 20.0, 5.0, 3.0),
                child: Text(
                  'Beyond Static',
                  style: TextStyle(
                    color: Color(0xFF2D62ED),
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(36.0, 0.0, 5.0, 3.0),
                child: Text(
                  'Let the Journey Begin',
                  style: lableStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.all(13.0),
                padding: EdgeInsets.fromLTRB(24.0, 30.0, 17.0, 17.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFD6D6D6),
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    ),
                  ],
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: lableStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 0.0,
                            ),
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD6D6D6),
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 6.0),
                                ),
                              ],
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0),
                              ),
                            ),
                            height: 40.0,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 12.0, bottom: 14.0),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              controller: _fNameController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Last Name',
                      style: lableStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 0.0,
                            ),
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD6D6D6),
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 6.0),
                                ),
                              ],
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0),
                              ),
                            ),
                            height: 40.0,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 12.0, bottom: 14.0),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              controller: _lNameController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Email ID',
                      style: lableStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 0.0,
                            ),
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD6D6D6),
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 6.0),
                                ),
                              ],
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0),
                              ),
                            ),
                            height: 40.0,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 12.0, bottom: 14.0),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              controller: _emailController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 115.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF2D62ED),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFD6D6D6),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 6.0),
                              ),
                            ],
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30.0),
                              right: Radius.circular(30.0),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          child: MaterialButton(
                            onPressed: () async {
                              if (_fNameController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else if (_lNameController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else if (_emailController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else {
                                var res = await ProfileBrain().profileUpdate(
                                  _fNameController.text,
                                  _lNameController.text,
                                  _emailController.text,
                                );
                                if (res == 201) {
                                  Navigator.pushReplacement(context, MaterialPageRoute<void>(
                                    builder: (BuildContext context) => Nav(),
                                  ),);
                                } else {
                                  print('error hai yaar');
                                }
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Save',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 17.0,
                                  backgroundColor: Color(0x55FFFFFF),
                                  child: SvgPicture.asset(
                                    'images/save.svg',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
