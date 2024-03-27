import 'package:flutter/material.dart';
import 'package:flutter_app_2/pages/home_page.dart';
import 'package:flutter_app_2/pages/login_page.dart';
import 'package:flutter_app_2/pages/student_page.dart';
import 'package:flutter_app_2/pages/teacher_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return LoadingPage();
    //   },
    // ),

    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return LoginPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),

    GoRoute(
      path: '/student',
      builder: (BuildContext context, GoRouterState state) {
        return StudentPage();
      },
    ),

    GoRoute(
      path: '/teacher',
      builder: (BuildContext context, GoRouterState state) {
        return TeacherPage();
      },
    ),
  ],
);
