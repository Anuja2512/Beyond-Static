import 'package:beyond_static_app/screens/allTheBrains/deleteBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/editprojectBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/settingsBrain.dart';
import 'package:beyond_static_app/screens/dashboard.dart';
import 'package:beyond_static_app/screens/documentation.dart';
import 'package:beyond_static_app/screens/loading.dart';
import 'package:beyond_static_app/screens/login.dart';
import 'package:beyond_static_app/screens/nav.dart';
import 'package:beyond_static_app/screens/newProject.dart';
import 'package:beyond_static_app/screens/projectData.dart';
import 'package:beyond_static_app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'screens/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beyond Static',
      theme: ThemeData(
        primaryColor: Color(0xFF2D62ED),
      ),
      initialRoute: '/loading',
      routes: {
        '/login': (context) => Login(),
        '/dashboard': (context) => DashBoard(),
        '/nav': (context) => Nav(),
        '/documentation': (context) => Documentation(),
        '/signup': (context) => SignUp(),
        '/loading': (context) => Loading(),
        '/settings': (context) => Settings(),
        '/project_data': (context) => ProjectData(id: 0,),
        '/new_project': (context) => NewProject(),
        '/settings_brain': (context) => SettingBrain(),
        '/editproject_brain':(context) => EditProject(),
        '/delete_brain':(context) => Delete(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
