import 'package:beyond_static_app/dialogBox.dart';
import 'package:beyond_static_app/screens/allTheBrains/loginBrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backG.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          constraints: BoxConstraints.expand(),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        SvgPicture.asset('images/loginLogo.svg'),
                        SizedBox(
                          height: 17.0,
                        ),
                        Text(
                          'BEYOND STATIC',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Welcome Back To',
                                  style: TextStyle(
                                    fontSize: 29.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Beyond Static',
                                  style: TextStyle(
                                    fontSize: 29.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                ),
                                Text(
                                  'Login to access your Beyond Static Account',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      'Username',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Container(
                                        // color: Colors.white,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30.0),
                                            right: Radius.circular(30.0),
                                          ),
                                        ),
                                        height: 35.0,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 12.0, bottom: 14.0),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                          controller: _usernameController,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Container(
                                        // color: Colors.white,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30.0),
                                            right: Radius.circular(30.0),
                                          ),
                                        ),
                                        height: 35.0,
                                        child: TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 12.0, bottom: 12.0),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                          controller: _passwordController,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                MaterialButton(
                                  onPressed: () async {
                                    var jwt = await LoginBrain().loginAttempt(
                                      _usernameController.text,
                                      _passwordController.text,
                                    );
                                    if (jwt != null) {
                                      storage.write(
                                        key: "username",
                                        value: _usernameController.text,
                                      );
                                      storage.write(
                                        key: "jwt",
                                        value: jwt.toString(),
                                      );
                                      Navigator.pushNamed(context, '/nav',
                                          arguments: (Route<dynamic> route) =>
                                              false);
                                    } else {
                                      displayDialog(
                                          context,
                                          "An Error Occurred",
                                          "No account was found matching that username and password");
                                    }
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 50.0,
                                        ),
                                        Text(
                                          'Sign In',
                                          style: TextStyle(
                                            color: Color(0xFF2D62ED),
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 26,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Color(0xFF789AF3),
                                          radius: 17.0,
                                          child: Icon(
                                            Icons.east,
                                            size: 23.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    height: 40.0,
                                    width: 160.0,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 10.0, right: 15.0),
                                          child: Divider(
                                            thickness: 2.0,
                                            color: Colors.white,
                                            height: 50,
                                          )),
                                    ),
                                    Text(
                                      "Or",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 15.0, right: 10.0),
                                        child: Divider(
                                          thickness: 2.0,
                                          color: Colors.white,
                                          // height: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/signup');
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 50.0,
                                            ),
                                            Text(
                                              'Sign Up',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFF789AF3),
                                              radius: 17.0,
                                              child: Icon(Icons.north_east,
                                                  size: 23.0),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF0046FF),
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        height: 40.0,
                                        width: 160.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0x55FFFFFF),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                spreadRadius: 3.0,
                                blurRadius: 6.0,
                                color: Color(0x272D3B33),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 520.0,
                          width: 450.0,
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
