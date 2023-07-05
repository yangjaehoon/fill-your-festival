import 'package:fyf/screen/home_screen.dart';
import 'package:fyf/screen/login.dart';
import 'package:fyf/screen/login_with_firebase.dart';
import 'package:fyf/login_app/login.dart';
import 'package:fyf/screen/login_with_firebase.dart';
import 'package:fyf/weather/screens/loading.dart';
import 'package:fyf/chatting_app/screens/main_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      //home: Loading(), //로딩창과 날씨화면 보여주는거
     // home: LogInWithFirebase(),
      //home: LogIn(), //로그인 화면 볼꺼면 주석 풀어
      //home: HomeScreen(), //슬라이딩 하는 메인 화면 볼꺼면 이 주석
      home: LoginSingupScreen(), //로그인화면 파이어베이스 연동하기
    ),
  );
}