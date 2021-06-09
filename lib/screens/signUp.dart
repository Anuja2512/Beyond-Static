import 'package:beyond_static_app/dialogBox.dart';
import 'package:beyond_static_app/screens/allTheBrains/signUpBrain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void changeState() {
    setState(() {
      isNotFinished = !isNotFinished;
    });
  }

  bool _buttonState = false;
  bool isNotFinished = false;

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

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
                          height: 50.0,
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
                          height: MediaQuery.of(context).size.height / 1.5,

                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Welcome To',
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
                                  height: 10.0,
                                ),
                                Text(
                                  'Get started to explore your new',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Beyond Static Account',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
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
                                      'First Name',
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
                                          controller: _fNameController,
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
                                      'Last Name',
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
                                          controller: _lNameController,
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
                                      'User Name',
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
                                          controller: _userNameController,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 30.0,
                                // ),
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
                                      'Email Id',
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
                                        width: 300.0,
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
                                          controller: _emailController,
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
                                        width: 300.0,
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
                                          controller: _passwordController,
                                          obscureText: true,
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
                                      'Confirm Password',
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
                                        width: 300.0,
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
                                          onSubmitted: (String cnfPass) {
                                            if (cnfPass !=
                                                _passwordController.text)
                                              displayDialog(
                                                  context,
                                                  'Passwords don\'t match',
                                                  'Check your passwords');
                                          },
                                          obscureText: true,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Checkbox(
                                      activeColor: Color(0x272D3B33),
                                      onChanged: (value) {
                                        setState(() {
                                          _buttonState = value as bool;
                                          changeState();
                                        });
                                      },
                                      value: _buttonState,
                                    ),
                                    Text(
                                      'I agree to Terms And Condition',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Visibility(
                                  visible: isNotFinished,
                                  child: MaterialButton(
                                    onPressed: () async {
                                      if (_userNameController.text.length < 6)
                                        displayDialog(
                                            context,
                                            "Invalid Username",
                                            "The username should be at least 6 characters long");
                                      else if (_passwordController.text.length <
                                          8)
                                        displayDialog(
                                            context,
                                            "Invalid Password",
                                            "The password should be at least 8 characters long");
                                      else {
                                        var res =
                                            await SignUpBrain().signUpAttempt(
                                          _userNameController.text,
                                          _fNameController.text,
                                          _lNameController.text,
                                          _emailController.text,
                                          _passwordController.text,
                                        );
                                        if (res == 201) {
                                          displayDialog(context, "Success",
                                              "The user was created. Log in now.");
                                          Navigator.pushNamed(
                                              context, '/login');
                                        } else if (res == 409)
                                          displayDialog(
                                              context,
                                              "That username is already registered",
                                              "Please try to sign up using another username or log in if you already have an account.");
                                        else {
                                          displayDialog(context, "Error",
                                              "An unknown error occurred.");
                                        }
                                      }
                                    },
                                    child: Container(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 55.0,
                                          ),
                                          Text(
                                            'Finish',
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
                                            child: Icon(Icons.east, size: 23.0),
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
                                      child: new Container(
                                        margin: const EdgeInsets.only(
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
                                        Navigator.pushNamed(context, '/login');
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
                                  height: 10,
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
                          // height: 517.0,
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
