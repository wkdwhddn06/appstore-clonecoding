import 'package:appstoreclonecoding/presenter/style/color_style.dart';
import 'package:appstoreclonecoding/presenter/widget/tab_view/tab_view.dart';
import 'package:appstoreclonecoding/presenter/widget/today_list/today_list_view.dart';
import 'package:flutter/material.dart';
import 'app_bar/app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'AppleGothic-Regular',
        primaryColor: ColorStyles.primaryColor,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewPage(),
    );
  }
}

class ViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4f4f4),
      child: Stack(
        children: [
          ListView(physics: BouncingScrollPhysics(), children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20, 56, 20, 0),
                    child: TitleAppBar(
                      '투데이',
                      subtext: '화요일, 6월 18일',
                      profileUrl:
                          'https://img.sbs.co.kr/newsnet/etv/upload/2018/09/12/30000612826_1280.jpg',
                    )),
                Container(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 8),
                    child: TodayListView()),
              ],
            ),
          ]),
          //Align(alignment: Alignment.bottomCenter, child: TabView())
        ],
      ),
    );
  }
}
