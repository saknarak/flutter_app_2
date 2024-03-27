import 'package:flutter/material.dart';
import 'package:flutter_app_2/pages/home2_page.dart';
import 'package:flutter_app_2/pages/home_page.dart';
import 'package:flutter_app_2/pages/login_page.dart';
import 'package:flutter_app_2/pages/student_page.dart';
import 'package:flutter_app_2/pages/teacher_page.dart';
import 'package:flutter_app_2/routes.dart';

void main() {
  print('hello');
  runApp(const MyApp());
  print('world');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginPage(),
      // home: StudentPage(),
      // home: TeacherPage(),
      // home: Home2Page(),
    );
  }
}
