import 'package:beyond_static_app/dialogBox.dart';
import 'package:beyond_static_app/screens/allTheBrains/projectBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/updateProjectBrain.dart';
import 'package:beyond_static_app/screens/projectData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const titleStyle = TextStyle(
  color: Color(0xFF2D62ED),
  fontSize: 18.0,
);

class EditProject extends StatefulWidget {
  final int id;
  const EditProject({required this.id});
  @override
  _EditProjectState createState() => _EditProjectState(id);
}

class _EditProjectState extends State<EditProject> {

  TextEditingController _projectController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _urlController = TextEditingController();
  TextEditingController _field1Controller = TextEditingController();
  TextEditingController _field2Controller = TextEditingController();
  TextEditingController _field3Controller = TextEditingController();
  TextEditingController _field4Controller = TextEditingController();
  TextEditingController _field5Controller = TextEditingController();
  bool fieldTwo = false;
  bool fieldThree = false;
  bool fieldFour = false;
  bool fieldFive = false;
  int counter = 1;
  bool button = true;

  final int id;
  _EditProjectState(this.id);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7D00B5),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                ),
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.symmetric(
                  vertical: 9.0,
                  horizontal: 9.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Update Project',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: CircleAvatar(
                        radius: 17.0,
                        backgroundColor: Color(0x55FFFFFF),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/projectdata');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(15.0),
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
                      'Project Name',
                      style: titleStyle,
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
                              controller: _projectController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Description',
                      style: titleStyle,
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

                            child: TextField(
                              maxLines: 6,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 12.0, bottom: 14.0),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              controller: _descriptionController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'URL',
                      style: titleStyle,
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
                              controller: _urlController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Input Fields',
                          style: titleStyle,
                        ),
                        Visibility(
                          visible: button,
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                                if (counter == 2)
                                  fieldTwo = true;
                                else if (counter == 3)
                                  fieldThree = true;
                                else if (counter == 4)
                                  fieldFour = true;
                                else if (counter == 5) {
                                  fieldFive = true;
                                  button = false;
                                }
                              });
                            },
                            child: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Field 1',
                      style: TextStyle(fontSize: 18.0),
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
                                // hintText: '(Optional)',
                                // hintStyle: TextStyle(
                                //   fontStyle: FontStyle.italic,
                                // ),
                                contentPadding:
                                    EdgeInsets.only(left: 12.0, bottom: 14.0),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              controller: _field1Controller,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: fieldTwo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Field 2',
                            style: TextStyle(fontSize: 18.0),
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
                                      // hintText: '(Optional)',
                                      // hintStyle: TextStyle(
                                      //   fontStyle: FontStyle.italic,
                                      // ),
                                      contentPadding: EdgeInsets.only(
                                          left: 12.0, bottom: 14.0),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    controller: _field2Controller,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: fieldThree,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Field 3',
                            style: TextStyle(fontSize: 18.0),
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
                                      // hintText: '(Optional)',
                                      // hintStyle: TextStyle(
                                      //   fontStyle: FontStyle.italic,
                                      // ),
                                      contentPadding: EdgeInsets.only(
                                          left: 12.0, bottom: 14.0),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    controller: _field3Controller,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: fieldFour,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Field 4',
                            style: TextStyle(fontSize: 18.0),
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
                                      // hintText: '(Optional)',
                                      // hintStyle: TextStyle(
                                      //   fontStyle: FontStyle.italic,
                                      // ),
                                      contentPadding: EdgeInsets.only(
                                          left: 12.0, bottom: 14.0),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    controller: _field4Controller,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: fieldFive,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Field 5',
                            style: TextStyle(fontSize: 18.0),
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
                                      // hintText: '(Optional)',
                                      // hintStyle: TextStyle(
                                      //   fontStyle: FontStyle.italic,
                                      // ),
                                      contentPadding: EdgeInsets.only(
                                          left: 12.0, bottom: 14.0),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    controller: _field5Controller,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 130.0,
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
                          child: FlatButton(
                            onPressed: () async {
                              if (_projectController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else if (_descriptionController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else if (_urlController.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");
                              else if (_field1Controller.text == '')
                                displayDialog(context, "Field cannot be empty",
                                    "Please enter your data in the area provided");

                              else {
                                var res = await UpdateProjectBrain().projectUpdate(
                                  id,
                                  _projectController.text,
                                  _descriptionController.text,
                                  _urlController.text,
                                  _field1Controller.text,
                                  _field2Controller.text,
                                  _field3Controller.text,
                                  _field4Controller.text,
                                  _field5Controller.text,
                                );
                                if (res == 201) {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (ctx) => ProjectData(
                                        id: id,
                                      ),
                                    ),
                                  );
                                  //Navigator.pushNamed(context, '/nav');
                                } else {
                                  print(res);
                                }
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Update',
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

class InputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                // hintText: '(Optional)',
                // hintStyle: TextStyle(
                //   fontStyle: FontStyle.italic,
                // ),
                contentPadding: EdgeInsets.only(left: 12.0, bottom: 14.0),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
