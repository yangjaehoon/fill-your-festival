import 'package:fyf/screen/home_screen.dart';
import 'package:fyf/screen/login.dart';
import 'package:fyf/screen/login_with_firebase.dart';
import 'package:fyf/login_app/login.dart';
import 'package:fyf/screen/login_with_firebase.dart';
import 'package:fyf/weather/screens/loading.dart';
import 'package:fyf/chatting_app/screens/main_screen.dart';


import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Loading(),
     // home: LogInWithFirebase(),
      //home: LogIn(), //로그인 화면 볼꺼면 주석 풀어
      //home: HomeScreen(), //슬라이딩 하는 메인 화면 볼꺼면 이 주석
      //home: LoginSingupScreen(),
    ),
  );
}