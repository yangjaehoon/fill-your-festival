import 'package:feple/screen/home_screen.dart';
import 'package:feple/screen/login.dart';
import 'package:feple/screen/login_with_firebase.dart';
import 'package:feple/login_app/login.dart';
import 'package:feple/screen/login_with_firebase.dart';
import 'package:feple/weather/screens/loading.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      //home: LogInWithFirebase(),
      //home: LogIn(), //로그인 화면 볼꺼면 주석 풀어
      //home: HomeScreen(), //슬라이딩 하는 메인 화면 볼꺼면 이 주석
      home: Loading(),
    ),
  );
}