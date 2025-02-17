import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
          (timer) {

        int? nextPage = pageController.page?.toInt();

        if(nextPage == null){
          return;
        }

        if(nextPage == 4) {
          nextPage = 0;
        }else{
          nextPage++;
        }
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark); //핸드폰 상단바 색깔 지정해주는거

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: ['hiphopplaya','jarasum','psy','rapbeat','waterbomb']
            .map(
              (festivalName) => Image.asset(
            'asset/img/${festivalName}_poster.jpg',
            fit: BoxFit.cover,
          ),
        )
            .toList(),
      ),
    );
  }
}